import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fruits_recogniser_app/main.dart';



class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  bool isworking = false;
  String result= "";

   late CameraController cameraController;
  late CameraImage imgCamera;
  initCamera()
  {
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((value)
        {
          if(!mounted)
            {
              return;
            }
          setState(() {
            cameraController.startImageStream((imageFromStream)
            {
              if(!isworking)
                {
                  isworking = true;
                  imgCamera = imageFromStream;
                  // runmodel10instremFrem(),
                }
            });
          });
        });
          }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
