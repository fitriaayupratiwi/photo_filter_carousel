import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/widget/takePicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final camera = await availableCameras();
  final firstCamera = camera.first;
  //final secondCamera = camera.last;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: TakepictureScreen(camera: firstCamera),
  ));
}
