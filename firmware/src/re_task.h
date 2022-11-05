#pragma once

#include <Arduino.h>

#include "knob_data.h"
#include "task.h"
#include "HardwareSerial.h"

class RETask : public Task<RETask> {
    friend class Task<RETask>; // Allow base Task to invoke protected run()

    public:
        RETask(const uint8_t task_core);
        ~RETask();

        QueueHandle_t getKnobStateQueue();

    protected:
        void run();

    private:

        QueueHandle_t knob_state_queue_;

        KnobState state_;

        //SemaphoreHandle_t mutex_;

};