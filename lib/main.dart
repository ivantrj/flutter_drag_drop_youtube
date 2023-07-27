import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color acceptColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DragTarget<Color>(
                  onAccept: (color) => setState(() => acceptColor = color),
                  builder: (BuildContext context, List<Object?> candidateData, List<dynamic> rejectedData) {
                    return Container(
                      color: acceptColor,
                      height: 100,
                      width: 100,
                    );
                  }),
              Draggable<Color>(
                data: Colors.blue,
                feedback: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                childWhenDragging: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
