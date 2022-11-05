#pragma once

#include <AceButton.h>
#include <Arduino.h>

#include "re_task.h"
#include "motor_task.h"
#include "task.h"

class InterfaceTask : public Task<InterfaceTask>, public ace_button::IEventHandler {
    friend class Task<InterfaceTask>; // Allow base Task to invoke protected run()

    public:
        InterfaceTask(const uint8_t task_core, MotorTask& motor_task, RETask* re_task);
        ~InterfaceTask();

        void handleEvent(ace_button::AceButton* button, uint8_t event_type, uint8_t button_state) override;
        void getConfig();

    protected:
        void run();

    private:
        MotorTask& motor_task_;
        RETask* re_task_;

        int current_config_ = 0;

        void changeConfig(bool next);
};
