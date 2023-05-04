#include <Arduino.h>
#include <SimpleFOC.h>

//#include "display_task.h"
#include "interface_task.h"
#include "motor_task.h"
#include "knob_data.h"
#include "console_angle.h"
#include "re_task.h"
#include "driver/uart.h"
#include "HardwareSerial.h"

// We don't have a display, so can just nullptr it
// Actually we don't even need it any more
//static DisplayTask* display_task_p = nullptr;


static RETask re_task = RETask(0);
static RETask* re_task_p = &re_task;

static MotorTask motor_task = MotorTask(1);
static ConsoleAngle console_angle = ConsoleAngle();


InterfaceTask interface_task = InterfaceTask(0, motor_task, re_task_p);

static QueueHandle_t knob_state_debug_queue;

void setup() {
  Serial.begin(115200);
  Serial2.begin(115200, SERIAL_8N1, PIN_SERIAL_RX, PIN_SERIAL_TX);

  motor_task.begin();
  interface_task.begin();
  re_task.begin();
  motor_task.addListener(re_task.getKnobStateQueue());

  interface_task.getConfig();

  //KnobState state;

  // Create a queue and register it with motor_task to print knob state to serial (see loop() below)
  knob_state_debug_queue = xQueueCreate(1, sizeof(KnobState));
  assert(knob_state_debug_queue != NULL);

  motor_task.addListener(knob_state_debug_queue);

  // Free up the loop task
  vTaskDelete(NULL);
  // Not sure why this is here but it prevents further code from running
}


static KnobState state = {};
uint32_t last_debug;

void loop() {
  //Serial.println(console_angle.rads2Deg(motor_task.angle()));
  //Serial.println(re_task.getKnobStateQueue());
  //delay(1000);

  
  // Print any new state, at most 5 times per second
  if (millis() - last_debug > 200 && xQueueReceive(knob_state_debug_queue, &state, portMAX_DELAY) == pdTRUE) {
    Serial.println(state.current_position);
    last_debug = millis();
  }

  static uint32_t last_stack_debug;
  if (millis() - last_stack_debug > 1000) {
    Serial.println("Stack high water:");
    Serial.printf("main: %d\n", uxTaskGetStackHighWaterMark(NULL));
    Serial.printf("motor: %d\n", uxTaskGetStackHighWaterMark(motor_task.getHandle()));
    Serial.printf("interface: %d\n", uxTaskGetStackHighWaterMark(interface_task.getHandle()));
    last_stack_debug = millis();
  }
  
  

}