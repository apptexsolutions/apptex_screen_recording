
A new Flutter package for record the screen. This plug-in requires Android SDK 21+ and iOS 10+

<!-- ## Features

TODO: List what your package can do. Maybe include images, gifs, or videos. -->

## Getting started


This plugin can be used for record the screen on Android and iOS devices.

1. For start the recording including microphone audio

```dart
bool started = ApptexScreenRecording.startRecording(videoName,recordAudio:true);
```

2. For start the recording without audio

```dart
bool started = ApptexScreenRecording.startRecording(videoName,recordAudio:false);
```

3. For stop the recording

```dart
String path = FlutterScreenRecording.stopRecording;
```


## Setup


# Android

ApptexScreenRecording do not request permissions necessary. You can use [Permission_handler](https://pub.dev/packages/permission_handler), a permissions plugin for Flutter.
Require and add the following permissions in your manifest:

```java
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_INTERNAL_STORAGE" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
```


# iOS

You only need add the permission message on the Info.plist

    <key>NSPhotoLibraryUsageDescription</key>
    <string>Save video in gallery</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>Save audio in video</string>

## Contributors
<a href="https://github.com/mrcse"><img src="https://avatars.githubusercontent.com/u/73348512?v=4" width="100px;" alt=""/><br /><sub><b>Jamshid Ali</b></sub></a><br /><a href="https://github.com/mrcse" title="Code">💻</a>
