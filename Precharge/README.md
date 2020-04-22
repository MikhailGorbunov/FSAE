# Precharge

A device to precharge the Tractive System. This prototype features voltage feedback to protect AIRs. In open-loop systems, if a wiring fault develops (eg. precharge resistor is disconnected or discharge is stuck on) then the precharge is ineffective and AIRs may become damaged.
<div align="center">
<img src="Precharge-render.png" width="400">
<p>Figure 1: The prototype Precharge module</p>
</div>

**Directories**
- [code/precharge](code/precharge) - The source code
- [Precharge](Precharge) - The PCB design files
- [docs](docs) - Data collected during commissioning, image assets for this document.

## Specifications & Features
- Wide input voltage 0 - 600V
- Powered by shutdown circuit: 12V
- Integrated PDOC
- Isolated HV measurement
- CAN interface (provisional) for status output
- Serial interface for collecting commissioning




## Operation
A brief description of the Precharge logic follows. Refer to *Figures 2 & 3* for state-flow information.
- Initialise in `State: Standby` and monitor for a stable Shutdown Circuit.
- If Shutdown Circuit is stable, enter `State: Precharge`:
  - Close the precharge relay
  - Monitor Accumulator voltage and Tractive System voltage
  - Once TSV is close enough to AV (eg >95%), precharge is complete
  - If precharge is too fast or too slow, a fault is likely present eg. Wiring fault, discharge stuck-on, stuck relay.
- If precharge completed with no errors, proceed to `State: Online`:
  - Enable the AIR, open precharge relay

If at any point the Shutdown Circuit voltage becomes too low, enter `State: Standby`

<div align="center">
<img src="docs/state-flow-chart.png" width="800">
<p>Figure 2: A top-level look at the state-flow behaviour</p>
</div>
<div align="center">
<img src="docs/timing-diagram.png" width="800">
<p>Figure 3: A timing diagram illustrating a precharge sequence. When the TS voltage reaches the target voltage, precharge is complete and the AIR closes. The target voltage should be 90-95% of the Accumulator voltage</p>
</div>

## Manual

## Commissioning Steps
*Refer to [docs/Experiments.xlsx](docs/Experiments.xlsx) for sample data collected during prototype construction.*

This section describes the steps taken to construct and characterise the Precharge Module. Repeat these steps as necessary when re-commissioning later versions of the circuit.

### Characterise Voltage-Frequency
- Assemble power supply components and V-F converter circuitry `U5 - U9`.
- Characterise voltage-frequency performance: perform V-F experiment `code/01-v-f-experiment` *Refer to Figure 4 for sample data collected during prototype construction*
  - Apply 0.15-10V at V-F inputs: `TP5, TP6`.
  - Record output frequencies: `TP1, TP2` vs input voltages.
  - Create linear fit and record the gain and offset parameters.
  - Update [code/precharge/measurements.cpp](code/precharge/measurements.cpp) with the linear-fit parameters: `V2F_slope_accu, V2F_ofs_accu, V2F_slope_ts, V2F_ofs_ts`
- If resistors `R31,R32,R36-39` or `R33,R34,R40-R3` are different to schematic:
  - Find the gain of these voltage dividers: eg `Gain = R39/(R31+R32+R36+R37+R38+R39)`
  - Update [code/precharge/measurements.cpp](code/precharge/measurements.cpp): `gainVoltageDivider` with the new gain value.


  <div align="center">
  <img src="docs/v-f-characteristic.png" width="800">
  <p>Figure 4: Results from the V-F experiment - data collected from the prototype during construction. The V-F response is extremely linear. Expect f(0V) = 0Hz, which is supported by very small y-intercept constants. While the V-F converter circuits are nominally identical, they should be characterised separately to account for component tolerance.</p>
  </div>

### Simulate Precharge
Here, we simulate a precharge sequence using low voltages that bypasses the prescaling voltage dividers.

<div align="center">
<img src="docs/simulated-precharge.jpg" width="800">
<p>Figure 5: Simulate a precharge sequence using a low voltage. The prescaling voltage dividers are bypassed by connecting Testpoint:TP5 to the switched accumulator voltage; and Testpoint:TP6 to the HV OUT connector.
</p>
</div>

*Voltages listed are referenced to the `GNDS` net, connector `J3` labelled `TS-`*
- Connect a known capacitive load eg 1000uF to `HV OUT`. Include a large parallel resistance (eg 20k) for capacitor discharge.
  - The voltage divider created by this resistance and the precharge resistor `R46` will limit the maximum voltage seen at capacitor. Large resistances will reduce this effect, but the capacitor will discharge more slowly during this test.
- Bypass the prescaling voltage dividers:
  - Connect `TP5` to precharge resistor (accumulator side)
  - Connect `TP6` to `HV OUT`
- Apply 4-10V to `HV IN`. Exact voltage will depend on accumulator voltage to be simulated: Accumulator Voltage multiplied by `gainVoltageDivider` (from commissioning steps) gives this voltage.
- Monitor serial data from the microcontroller via USB
- Power the circuit at `J1`
- Monitor precharge behaviour in serial console and note precharge percentage and duration.
- Modify and upload [code/precharge/precharge.ino](code/precharge/precharge.ino) as necessary. Relevant parameters are:
  - `MIN_EXPECTED`[ms] The minimum allowable precharge time. Times faster than this are likely due to wiring fault.
  - `MAX_EXPECTED`[ms] The maximum allowable precharge time. Times slower than this are likely due to wiring fault, stuck discharge circuit.
  - `TARGET_PERCENT`[%] Precharge to this percentage of accumulator voltage.
    - The discharge resistance used during this simulation affects the maximum TS voltage attainable. I found a maximum voltage of only 90% when using Precharge:390Ohm and discharge 4k7.

### Results
A precharge sequence was simulated following the above procedure with results shown in *Figure 6*. Simulated voltages were measured accurate to the nearest volt.

**Parameters:**
- V Accumulator: 5.05V (336V equivalent)
- Tractive system capacitor: 1000uF
- Tractive system discharge capacitor: 4k7 (connected in parallel with capacitor. Larger value as in Figure 5 is preferred)
- `gainVoltageDivider`= 0.015 ([code/precharge/measurements.cpp](code/precharge/measurements.cpp))
- Target precharge percentage: 88.0 (discharge resistor is only one order of magnitude larger than 390Ohm precharge resistor)


<div align="center">
<img src="docs/precharge-results.png" width="400">
<p>Figure 6: Results from a simulated precharge. Here, the accumulator was simulated with 5.05V => 337Vequiv. The TS voltage at TP6 reached 4.561V => 304Vequiv. which is 90.2% as indicated. The precharge finished at 90% instead of 88% because some settling time is imposed by the program.
</p>
</div>

Of note are the seemingly high precharge percentages observed between 0-200ms. These are artifacts of moving average filters used to smooth voltage measurements and reject spurious measurements. Since the smoothed accumulator voltage does not rise instantaneously, the precharge voltage represents a significant percentage in early stages of the precharge cycle.




## Recommendations after building prototype

**V-F Conversion**: Either include offset in V-F converter circuit so that min frequency is eg ~100Hz instead of 0Hz ([Datasheet](https://www.ti.com/lit/ds/symlink/lm331.pdf): Figure 14) or replace V-F converters with a microcontroller programmed for the same task. The challenge is that low frequencies require a long timeout period. Applying a 100Hz offset means the longest timeout would be 10 milli-seconds. The current solution works well, using a combination of outlier rejection and Exponential Moving Average filters.
