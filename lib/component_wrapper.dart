import 'package:audioplayers/audioplayers.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class ComponentWrapper {
  static ComponentWrapper? _instance;

  late AudioPlayer audioPlayer;
  late AudioPlayer mainSongAudioPlayer;
  late AudioCache audioCache;
  late AudioCache audioCache2;
  late AudioCache mainSongAudioCache;
  late SoundPopulator soundPopulator;
  late bool mainSongAudioPlayState;

  ComponentWrapper._() {
    audioPlayer = AudioPlayer();
    audioPlayer.setReleaseMode(ReleaseMode.STOP);

    mainSongAudioPlayer = AudioPlayer();
    mainSongAudioPlayer.setReleaseMode(ReleaseMode.STOP);

    audioCache =
        AudioCache(prefix: 'assets/sounds/speech/', fixedPlayer: audioPlayer);
    audioCache2 =
        AudioCache(prefix: 'assets/sounds/', fixedPlayer: audioPlayer);
    mainSongAudioCache =
        AudioCache(prefix: 'assets/sounds/', fixedPlayer: mainSongAudioPlayer);

    soundPopulator = SoundPopulator();
  }

  static ComponentWrapper get instance => _instance ??= ComponentWrapper._();
}
