import 'package:flutter/material.dart';
import 'package:terest/cuarto2.dart';

class Tercera2 extends StatelessWidget {
  final String username;

  const Tercera2(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/casa.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'estas recostado en tu cama pensandoen lo que sucedio ese dia... \n-Por que?? Soy bastante idiota por no haberle hablado. \nEntre enojado y apenado te decides a ir a la misma tienda esperando encontrarla.',
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
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.3, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.6, // Ajusta el alto según el tamaño de la pantalla
              child:
                  Image.asset('assets/images/recostado.jpeg', fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cuarto2(username),
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
              child:
                  const Text('inicio', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
