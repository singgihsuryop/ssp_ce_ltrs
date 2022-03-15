import 'package:audioplayers/audioplayers.dart';

class ComponentWrapper {
  static ComponentWrapper? _instance;

  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late AudioCache audioCache2;

  ComponentWrapper._() {
    audioPlayer = AudioPlayer();
    audioPlayer.setReleaseMode(ReleaseMode.STOP);

    audioCache =
        AudioCache(prefix: 'assets/sounds/speech/', fixedPlayer: audioPlayer);
    audioCache2 =
        AudioCache(prefix: 'assets/sounds/', fixedPlayer: audioPlayer);
  }

  static ComponentWrapper get instance => _instance ??= ComponentWrapper._();
}
