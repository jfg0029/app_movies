import 'package:flutter/material.dart';

class AppColors {
  Color getColorCheckBox(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
    }

    static const Color darkBackground = Color.fromARGB(255, 39, 48, 65);
  }
