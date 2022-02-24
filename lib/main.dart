import 'package:flutter/material.dart';
import 'package:glassmorphism_button/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isblur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
          child: Stack(
        children: [
          Image.asset(
            "assets/glass.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isblur = !_isblur;
                });
              },
              child: GlassMorphism(
                blur: _isblur ? 20 : 0.1,
                opacity: 0.2,
                child: SizedBox(
                  height: 210,
                  width: 320,
                  child: Text(
                    _isblur ? 'Un Blur' : 'Tap to Blur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
