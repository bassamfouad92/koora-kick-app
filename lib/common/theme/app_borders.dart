import 'package:flutter/material.dart';

abstract class AppBorders {
  InputBorder get inputEnabledBorder;
  InputBorder get inputFocusedBorder;
  InputBorder get inputErrorBorder;
  InputBorder get inputSearchBorder;
  InputBorder get inputSearchFocusedBorder;
  
  // You can add more global border types here (e.g. Card borders)
}
