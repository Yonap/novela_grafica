import 'package:flutter/material.dart';
import 'package:terest/startplace2.dart';

class GamePage extends StatelessWidget {
  final String username;

  const GamePage(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/ome.jpeg', // Ruta de tu imagen de fondo
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Te encuentras en Tokio Japon, en una pequeña ciudad llamada Ome. \nSolias vivir en la ciudad de Nagaroto, pero tuviste problemas familiares y por eso terminaste en Ome. \nCaminas por la calle y encuentras un folleto de la universidad llamada Shinhwa, que es de hecho, \nbastante popular en Tokio...',
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

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.contain, // Ajusta el contenido para que quepa
                  child: Text(
                    '¡Hola, $username!',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30.0, // Ajusta la posición vertical fija
              ),
              child: Image.asset(
                'assets/images/iconmen.png', // Ruta de tu imagen a la derecha
                width: 60, // Ancho fijo de la imagen
                height: 60, // Alto fijo de la imagen
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Folleto(username),
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
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30), // Aumenta el tamaño del botón
              ),
              child: const Text('atras', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
