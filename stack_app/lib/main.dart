import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StackLesson(),
    );
  }
}

class StackLesson extends StatelessWidget {
  const StackLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //height: 250,
        //width: 350,
        child: Stack(
          clipBehavior: Clip.none,
          //overflow: Overflow.visible,
          alignment: Alignment.centerLeft,
          fit: StackFit.loose,
          children: [
            maviKutu,
            Positioned(bottom: -30, right: -30, child: pembeKutu),
            Positioned(bottom: 20, right: 20, child: yildiz)
          ],
        ),
      ),
    );
  }
}

Widget maviKutu = Container(
  height: 200,
  width: 200,
  color: Colors.blue,
);

Widget pembeKutu = Container(
  height: 100,
  width: 100,
  color: Colors.pink,
);

Widget yildiz = Icon(
  Icons.star,
  size: 50,
  color: Colors.yellow,
);
