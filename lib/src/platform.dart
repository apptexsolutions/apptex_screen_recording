import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'method_channel.dart';

abstract class ApptexPlatform extends PlatformInterface {
  /// Constructs a UrlLauncherPlatform.
  ApptexPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApptexPlatform _instance = ApptexMethodChannel();

  /// The default instance of [ApptexPlatform] to use.
  ///
  /// Defaults to [MethodChannelUrlLauncher].
  static ApptexPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [UrlLauncherPlatform] when they register themselves.

  static set instance(ApptexPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> startRecording(String name, bool audio) {
    throw UnimplementedError();
  }

  Future<String> get stopRecording {
    throw UnimplementedError();
  }
}
