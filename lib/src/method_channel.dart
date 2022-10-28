import 'package:flutter/services.dart';
import 'platform.dart';

class ApptexMethodChannel extends ApptexPlatform {
  static const MethodChannel _channel =
      MethodChannel('flutter_screen_recording');

  @override
  Future<bool> startRecording(String name, bool audio) async {
    final bool start = await _channel
        .invokeMethod('startRecordScreen', {"name": name, "audio": audio});
    return start;
  }

  @override
  Future<String> get stopRecording async {
    final String path = await _channel.invokeMethod('stopRecordScreen');
    return path;
  }
}
