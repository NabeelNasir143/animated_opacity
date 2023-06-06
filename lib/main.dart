import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _width = 120.0;
  var _height = 80.0;
  bool flag = true;
  var bgColor = Color.fromARGB(255, 128, 79, 95);
  var opaCity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              color: bgColor,
              width: _width,
              height: _height,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 70.0;
                    bgColor = Colors.green;
                    flag = false;
                  } else {
                    _width = 70.0;
                    _height = 100.0;
                    bgColor = Colors.lightBlueAccent;
                    flag = true;
                  }
                });
              },
              child: Text('Animate'),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              opacity: opaCity,
              duration: Duration(seconds: 2),
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      opaCity = 0.0;
                      flag = false;
                    } else {
                      opaCity = 1.0;
                      flag = true;
                    }
                  });
                },
                child: Text('Press')),
          ],
        ),
      ),
    );
  }
}
