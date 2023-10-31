import 'package:flutter/material.dart';
import 'package:terest/septimo2.dart';

class Sexto2 extends StatelessWidget {
  final String username;

  const Sexto2(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/girlibrary.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Hola mucho gusto, me llamo $username, y tu?? \nHola me llamo Katsuki, que tal? \nSin querer te quedas perplejo porque no \npensaste que te responderia.',
                        style: const TextStyle(
                          color: Colors
                              .white, // Color del texto (blanco para que sea visible en el fondo oscuro)
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Septimo2(username),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(150, 40), // Aumenta el tamaño del botón
              ),
              child: const Text('Continuar',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30), // Aumenta el tamaño del botón
              ),
              child: const Text('volver al inicio',
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
