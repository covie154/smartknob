#include "re_task.h"
#include "semaphore_guard.h"

RETask::RETask(const uint8_t task_core) : Task{"Display", 4048, 1, task_core} {
  knob_state_queue_ = xQueueCreate(1, sizeof(KnobState));
  assert(knob_state_queue_ != NULL);
}

RETask::~RETask() {
  vQueueDelete(knob_state_queue_);
  //vSemaphoreDelete(mutex_);
}

void RETask::run() {
    
    KnobState state;
    HardwareSerial RESerial(2); // use UART2

    int prev_state = 0;
    int latest_state = 0;
    char res_read;
    RESerial.begin(115200, SERIAL_8N1, PIN_SERIAL_RX, PIN_SERIAL_TX);

    while (1) {
        // If a queue request has been received:
        if (xQueueReceive(knob_state_queue_, &state, portMAX_DELAY) == pdTRUE) {
          
          // Change latest_state if there is actually a change
          if (state.current_position != prev_state) { 
            if (RESerial.available()) {
              if (state.current_position > prev_state) {
                latest_state = 1;
              } else {
                latest_state = -1;
              }
              Serial.println(state.current_position);
            } else {
              //Serial.println("Not working?");
            }
            
            prev_state = state.current_position;
          }

          // Output the latest change/state
          if (RESerial.available()) {
            res_read = RESerial.read();
            
            if (res_read == 's') {
              if (latest_state == 1) {
                RESerial.print("+");
                Serial.print("+");
              } else if (latest_state == -1) {
                RESerial.print("-");
                Serial.print("-");
              } else {
                RESerial.print("0");
                Serial.print("0");
              }
            }

          } else {
              //Serial.println("Serial not working?");
          }

          // Don't forget to reset the latest_state otherwise it will always be +/-
          latest_state = 0;

        }
        delay(2);
    }
}

QueueHandle_t RETask::getKnobStateQueue() {
  return knob_state_queue_;
}