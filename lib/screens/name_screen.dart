import 'package:flutter/material.dart';
import 'package:flutter_os_wear/screens/ambient_screen.dart';
import 'package:flutter_os_wear/screens/relax_menu.dart';
import 'package:flutter_os_wear/wear.dart';

class NameScreen extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  NameScreen(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (context, mode) => mode == Mode.active
          ? NameScreenUI(screenHeight, screenWidth)
          : AmbientWatchFace(),
    );
  }
}

class NameScreenUI extends StatelessWidget {
  final screenHeight;
  final screenWidth;

  const NameScreenUI(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/outline_arrow.png', scale: 1.8,),
                    const SizedBox(width: 5),
                    const Text('Atras',
                      style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                onTap: () { Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 15),
              const Text('Yaelo45',
                style: TextStyle( fontSize: 18,),
              ),
              const SizedBox(height: 5),
              Text('Bienvenido Yaelo45',
                style: TextStyle( fontSize: 15, color: Colors.blue[700],
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color.fromARGB(255, 66, 245, 111),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 6.0,
                  textStyle: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return RelaxView(screenHeight, screenWidth);
                    }),
                  );
                },
                child: const Text(
                  'NEXT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
