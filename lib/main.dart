import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'user.dart';
import 'package:audioplayers/audioplayers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AudioManager.initialize();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MaterialApp(
    home: UserPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class AudioManager {
  static late AudioPlayer _backgroundPlayer;
  static late AudioPlayer _buttonPlayer;
  static late AudioPlayer _backgroundPlayer2;
  static late AudioPlayer _backgroundPlayer3;
  static late AudioPlayer _backgroundPlayer4;
  static late AudioPlayer _backgroundPlayer5;

  static void initialize() {
    _backgroundPlayer = AudioPlayer();
    _buttonPlayer = AudioPlayer();
    _backgroundPlayer2 = AudioPlayer();
    _backgroundPlayer3 = AudioPlayer();
    _backgroundPlayer4 = AudioPlayer();
    _backgroundPlayer5 = AudioPlayer();
  }

  static Future<void> playBackgroundMusic1() async {
    await _backgroundPlayer.stop();
    await _backgroundPlayer2.stop();
    await _backgroundPlayer4.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer5.stop();
    await _buttonPlayer.stop();
    await _backgroundPlayer.play(AssetSource('images/fondo.mp3'));
  }

  static Future<void> playBackgroundMusic2() async {
    await _backgroundPlayer2.stop();
    await _backgroundPlayer5.stop();
    await _backgroundPlayer4.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer.stop();
    await _buttonPlayer.stop();
    await _backgroundPlayer.play(AssetSource('images/fondo2.mp3'));
  }

  static Future<void> playBackgroundMusic3() async {
    await _backgroundPlayer4.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer5.stop();
    await _backgroundPlayer2.stop();
    await _backgroundPlayer.stop();
    await _buttonPlayer.stop();
    await _backgroundPlayer.play(AssetSource('images/inicio.mp3'));
  }

  static Future<void> playBackgroundMusic5() async {
    await _backgroundPlayer4.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer5.stop();
    await _backgroundPlayer2.stop();
    await _backgroundPlayer.stop();
    await _buttonPlayer.stop();
    await _backgroundPlayer.play(AssetSource('images/fondo3.mp3'));
  }

  static Future<void> playBackgroundMusic4() async {
    await _backgroundPlayer.stop();
    await _backgroundPlayer5.stop();
    await _backgroundPlayer2.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer4.stop();
    await _buttonPlayer.stop();
    await _backgroundPlayer.play(AssetSource('images/flotar.mp3'));
  }

  static Future<void> playButtonSound() async {
    await _buttonPlayer.stop();
    await _backgroundPlayer3.stop();
    await _backgroundPlayer5.stop();
    await _backgroundPlayer4.stop();
    await _backgroundPlayer2.stop();
    await _backgroundPlayer.stop();
    await _buttonPlayer.play(AssetSource('images/pagina.mp3'));
  }

  static void dispose() {
    _backgroundPlayer.dispose();
    _backgroundPlayer2.dispose();
    _backgroundPlayer3.dispose();
    _backgroundPlayer4.dispose();
    _backgroundPlayer5.dispose();
    _buttonPlayer.dispose();
  }
}
