import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  // Constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App MG",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App Flutter"),
      ),
      body: Center(
        child: ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.access_time),
                SizedBox(
                  width: 5,
                ),
                Text("Tocar boton")
              ],
            ),
            onPressed: () {
              var data = DateTime.now();
              print(data);
            }
            // child: Text('Tocar boton'),
            ),
      ),
    );
  }
}
