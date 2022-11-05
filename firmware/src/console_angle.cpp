#include "console_angle.h"

float ConsoleAngle::adjustedAngle() {

    // I don't know what I'm doing here
    KnobState state;

    float angle_abs_ = state.current_position;

    float left_bound = PI / 2;

    float adjusted_sub_position = state.sub_position_unit * state.config.position_width_radians;
        if (state.config.num_positions > 0) {
          if (state.current_position == 0 && state.sub_position_unit < 0) {
            adjusted_sub_position = -logf(1 - state.sub_position_unit  * state.config.position_width_radians / 5 / PI * 180) * 5 * PI / 180;
          } else if (state.current_position == state.config.num_positions - 1 && state.sub_position_unit > 0) {
            adjusted_sub_position = logf(1 + state.sub_position_unit  * state.config.position_width_radians / 5 / PI * 180)  * 5 * PI / 180;
          }
        }

    float raw_angle = left_bound - state.current_position * state.config.position_width_radians;
    float adjusted_angle = raw_angle - adjusted_sub_position;

    Serial.print(angle_abs_);
    Serial.print(", ");
    Serial.println(adjusted_sub_position);

    return adjusted_angle;
}

int ConsoleAngle::rads2Deg(float rads) {
    return 180/PI * rads;
}