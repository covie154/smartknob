#include "re_task.h"
#include "semaphore_guard.h"
#include "HardwareSerial.h"

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
          // Do we need to do anything immediately after receiving the queue request?
          //Serial.print(state.current_position);
        }
        
        // Otherwise do this:
        if (state.current_position != prev_state) { 
          if (state.current_position > prev_state) {
            latest_state = 1;
          } else {
            latest_state = -1;
          }
          prev_state = state.current_position;
          Serial.println(latest_state);
        }

        //RESerial.print("s");
        //delay(10);
        
        if (RESerial.available() > 0) {
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
        }

        // Don't forget to reset the latest_state otherwise it will always be +/-
        latest_state = 0;
        delay(2);
    }
}

QueueHandle_t RETask::getKnobStateQueue() {
  return knob_state_queue_;
}