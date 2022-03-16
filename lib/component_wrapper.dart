import 'package:audioplayers/audioplayers.dart';
import 'package:ssp_ce_flutter/sound_populator.dart';

class ComponentWrapper {
  static ComponentWrapper? _instance;

  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late AudioCache audioCache2;
  late SoundPopulator soundPopulator;

  ComponentWrapper._() {
    audioPlayer = AudioPlayer();
    audioPlayer.setReleaseMode(ReleaseMode.STOP);

    audioCache =
        AudioCache(prefix: 'assets/sounds/speech/', fixedPlayer: audioPlayer);
    audioCache2 =
        AudioCache(prefix: 'assets/sounds/', fixedPlayer: audioPlayer);

    soundPopulator = SoundPopulator();
  }

  static ComponentWrapper get instance => _instance ??= ComponentWrapper._();
}
