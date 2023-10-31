import 'package:flutter/material.dart';
import 'package:terest/primera.dart';

class Folleto extends StatelessWidget {
  final String username;

  const Folleto(this.username, {super.key});

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
                fit: BoxFit
                    .fill, // Cambia el valor de BoxFit.cover a BoxFit.fill
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.7, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/publicidad.jpeg',
                  fit: BoxFit.fill),
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
                        'Simplemente lo ignoras y prosigues con tu camino hacia el 6-six, \na comprar algo de ramen. \nA lo lejos ves a una chica hermosa y radiante...',
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
                    builder: (context) => Primera(username),
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
