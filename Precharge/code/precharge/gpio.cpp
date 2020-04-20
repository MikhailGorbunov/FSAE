#include "gpio.h"

void setupGPIO(void) {
    // LEDs
    for (uint8_t i=0; i<(sizeof(STATUS_LED)/sizeof(*STATUS_LED)); i++) pinMode(STATUS_LED[i], OUTPUT);
    // Configuration solder-jumpers
    for (uint8_t i=0; i<(sizeof(CONFIG_PIN)/sizeof(*CONFIG_PIN)); i++){
      pinMode(CONFIG_PIN[i], INPUT);
      digitalWrite(CONFIG_PIN[i], HIGH); // Activate pullup
    }

    pinMode(SHUTDOWN_CTRL_PIN, OUTPUT);
    digitalWrite(SHUTDOWN_CTRL_PIN, LOW);

    pinMode(PRECHARGE_CTRL_PIN, OUTPUT);
    digitalWrite(PRECHARGE_CTRL_PIN, LOW);

    pinMode(FREQ_TS_PIN, INPUT);
    pinMode(FREQ_ACCU_PIN, INPUT);
    pinMode(PDOC_PIN, INPUT);
    pinMode(PWR_OK_PIN, INPUT);


    // Animate status lights
    for (int i = 0; i < sizeof(STATUS_LED)/sizeof(*STATUS_LED); i++){
      digitalWrite(STATUS_LED[i], HIGH);
    }
    delay(500);
    for (int i = 0; i < sizeof(STATUS_LED)/sizeof(*STATUS_LED); i++){
      digitalWrite(STATUS_LED[i], LOW);
    }
    delay(500);

}


float getShutdownCircuitVoltage() {
  const float VF_DIODE = 0.7;
  const float GAIN_PWR_OK_DIVIDER = 0.2537;
  const float ADC_PREC = 3.3 / 1023.0; // ADC precision: full scale is 3.3V @ 1023
  unsigned int raw = analogRead(PWR_OK_PIN);
  // return (float)raw * ADC_PREC / GAIN_PWR_OK_DIVIDER + VF_DIODE;
  return map((float)raw*ADC_PREC,0,2.12,0,11.96); // poor fit experimental. Disregards diode but the ideal formula did not work...
}
