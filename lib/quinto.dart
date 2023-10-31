import 'package:flutter/material.dart';
import 'package:terest/sexto.dart';

class Quinto extends StatelessWidget {
  final String username;

  const Quinto(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/entrar.jpeg'),
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
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Ho... Hola de nuevo, me recuerdas? soy el chico de ayer \nClaro que recuerdo!! \nquieres tomar algo? yo invito. \nPor supuesto',
                        style: TextStyle(
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
                    builder: (context) => Sexto(username),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('continuar',
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
