import 'package:flutter/cupertino.dart';

class DeviceInfo {
  static double height = 0.0;
  static double width = 0.0;
  static bool smallDevice = false;
  static bool extraLargeDevice = false;

  /// Function used to set device information
  static void setDeviceInfo(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    smallDevice = getDeviceSize() == DeviceSize.small;
    extraLargeDevice = getDeviceSize() == DeviceSize.xLarge;
  }

  /// Function used to get device size
  static DeviceSize getDeviceSize() {
    if (height > 850) {
      /// iPhone 12 pro max
      return DeviceSize.xLarge;
    } else if (height > 800) {
      /// iPhone 12 pro
      return DeviceSize.large;
    } else if (height > 750) {
      /// iPhone 8
      return DeviceSize.medium;
    } else {
      /// iPhone SE
      return DeviceSize.small;
    }
  }

  /// Function used to check keyboard is open or not
  static bool isKeyBoardOpen(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0) {
      return true;
    } else {
      return false;
    }
  }
}

enum DeviceSize { small, medium, large, xLarge }
