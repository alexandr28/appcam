import 'package:flutter/material.dart';
import 'views/home.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
Future<void> main()async {
  try{
    WidgetsFlutterBinding.ensureInitialized();
    cameras=await availableCameras();
  }on CameraException catch(e){
    logError(e.code,e.description);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}


