
import 'dart:async';

import 'package:flutter/services.dart';

class RecordWindows {
  static const MethodChannel _channel = MethodChannel('record_windows');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
