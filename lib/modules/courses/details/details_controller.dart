import 'package:audio_session/audio_session.dart';
import 'package:clinic/models/instructor.dart';
import 'package:clinic/models/lesson_model.dart';
import 'package:clinic/models/topic_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_recorder_platform_interface.dart';

import 'package:get/get.dart';

class DetailsController extends GetxController {
  late bool _mPlayerIsInited;
  late String _mPath;
  late bool _mRecorderIsInited;
  late bool _mplaybackReady;
  late FlutterSoundRecorder? _mRecorder;
  late Codec _codec;
  @override
  void onInit() {
    _mPlayerIsInited = false;
    _mPath = 'tau_file.mp4';
    _mRecorderIsInited = false;
    _mplaybackReady = false;
    _mRecorder = FlutterSoundRecorder();
    _codec = Codec.aacMP4;
    super.onInit();
  }

  final List<Widget> tabs = [
    const Tab(
      child: Text("OverView"),
    ),
    const Tab(
      child: Text("Circulum"),
    ),
    const Tab(
      child: Text("Instructor"),
    ),
    const Tab(
      child: Text("Reviews"),
    )
  ];
  final List<TopicModel> topics = [
    TopicModel(title: "jQuery Effects", description: "", lessons: [
      LessonModel(
          id: 'l1',
          title: "jQuery Effects: Hide and Show",
          isQuiz: false,
          duration: 30),
      LessonModel(
          id: 'l2',
          title: "Live meeting about Infotech Strategies",
          isQuiz: false,
          duration: 15),
      LessonModel(
          id: 'l3', title: "Quiz 1: Yes or No?", isQuiz: true, duration: 15),
    ]),
  ];
  final InstructorModel instructor = InstructorModel(
      role: "Advanced Educator",
      id: 'i1',
      name: 'Maggie StrickLand',
      imageUrl:
          "https://template.hasthemes.com/maxcoach/maxcoach/assets/images/profile/instructor.jpeg",
      description:
          "Maggie is a brilliant educator, whose life was spent for computer science and love of nature. Being a female, she encountered a lot of obstacles and was forbidden to work in this field by her family. With a true spirit and talented gift, she was able to succeed and set an example for others.");
  Future<void> openTheRecorder() async {
    await _mRecorder!.openRecorder();

    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth |
              AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode: AVAudioSessionMode.spokenAudio,
      avAudioSessionRouteSharingPolicy:
          AVAudioSessionRouteSharingPolicy.defaultPolicy,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
      androidAudioAttributes: const AndroidAudioAttributes(
        contentType: AndroidAudioContentType.speech,
        flags: AndroidAudioFlags.none,
        usage: AndroidAudioUsage.voiceCommunication,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      androidWillPauseWhenDucked: true,
    ));

    _mRecorderIsInited = true;
  }
}
