import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'DancingScript'),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assets'),
          ),
          body: Splash()),
    );
  }
}
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new MainApp(),
        title: new Text('Flutter'),
        image: new Image.asset('assets/icons/icon.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'DancingScript'),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assets'),
          ),
          body: SingleChildScrollView(
    child: Column(
    children: [
    AspectRatio(
    aspectRatio: 16 / 9,
    child: Container(
    height: 100, child: Image.asset('assets/images/2.jpg'))),
    AspectRatio(
    aspectRatio: 16 / 9,
    child: Container(
    height: 100, child: Image.network('https://bit.ly/3DxnHu4'))),
    Text("Font Checker",style: TextStyle(fontSize: 50),)
    ],
    )),
    )
    );
  }
}
