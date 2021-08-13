import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amberAccent;
  Color color3 = Colors.blue;
  bool isAccepted = false;
  Color targetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Draggable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  // ! property utama child, childWhenDragging, feedback
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  // ! property utama child, childWhenDragging, feedback
                  // ini data color 2 yang dicarry saat drag
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      // ! untuk membuat ujung2 persegi melengkung
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          // ! untuk membuat ujung2 persegi melengkung
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          // ! untuk membuat ujung2 persegi melengkung
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              },
            ),
            Draggable<Color>(
              data: color3,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color3,
                  shape: StadiumBorder(),
                ),
              ),
              childWhenDragging: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: Colors.grey,
                  shape: StadiumBorder(),
                ),
              ),
              feedback: SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  color: color3.withOpacity(0.7),
                  shape: StadiumBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
