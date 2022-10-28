// ignore_for_file: file_names

import 'platform.dart';

class ApptexScreenRecording {
  ///start Recoring is static function wich take two parameters
  ///[name] name of the output file and [recordAudio] wich control
  ///whether this recording use microphone or not.
  ///The return type of this function is future bool [Future] wich is return wheather
  ///the recording started or not
  static Future<bool> startRecording(String name,
      {bool recordAudio = false}) async {
    return await ApptexPlatform.instance.startRecording(name, recordAudio);
  }

  ///Simple stop the recording the return type is future String [Future] wich return the
  ///video fie [path]
  static Future<String> get stopRecording async {
    final String path = await ApptexPlatform.instance.stopRecording;

    return path;
  }
}
