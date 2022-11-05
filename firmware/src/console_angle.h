#pragma once

#include <Arduino.h>

#include "knob_data.h"

class ConsoleAngle {
    public:
        uint16_t angle_abs_;
        
        float adjustedAngle();
        int rads2Deg(float);

    private:
        KnobState state_;
};