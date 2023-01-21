import 'package:flutter/material.dart';
import 'package:flutter_flashlight/flutter_flashlight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlashLight App"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(84, 97, 123, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/b.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Transform.rotate(
            angle: -3.14 / 2,
            child: Transform.scale(
              scale: 4.0,
              child: Switch(
                  value: isON,
                  onChanged: (value) {
                    setState(() {
                      isON = !isON;
                      isON ? Flashlight.lightOn() : Flashlight.lightOff();
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
