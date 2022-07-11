import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Loading Button'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button1'),
              ),
              _isLoading == true
                  ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    _isLoading = false;
                  });
                  Future.delayed(
                      const Duration(seconds: 3),
                          () {
                        setState(() {
                          _isLoading = true;
                        });
                      }
                  );
                },
                child: const Text('Button2'),
              )
                  : const SpinKitRotatingCircle(
                color: Colors.red,
                size: 50.0,
              ),
              _isLoading == true
                  ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    _isLoading = false;
                  });
                  Future.delayed(
                      const Duration(seconds: 4),
                          () {
                        setState(() {
                          _isLoading = true;
                        });
                      }
                  );
                },
                child: const Text('Button3'),
              )
                  : const SpinKitCircle(
                color: Colors.green,
                size: 50.0,
              ),
              _isLoading == true
                  ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                onPressed: () {
                  setState(() {
                    _isLoading = false;
                  });
                  Future.delayed(
                      const Duration(seconds: 5),
                          () {
                        setState(() {
                          _isLoading = true;
                        });
                      }
                  );
                },
                child: const Text('Button4'),
              )
                  : const SpinKitFadingFour(
                color: Colors.yellow,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
