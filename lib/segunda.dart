import 'package:flutter/material.dart';
import 'package:terest/tercera.dart';

class Segunda extends StatelessWidget {
  final String username;

  const Segunda(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tienda.jpeg'),
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Ho... Hola! me llamo $username, y tu? \nMe llamo JinSun Katanawa, mucho gusto. \nEstudias? \nSi, en la ciudad de Tokio en la Universidad de Shinhwa \nYo pensaba inscribirme ahi...',
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
                        'De verdad?? Es una excelente universidad. \nEspero podamos vernos pronto tengo que irme... \nSi, hasta pronto.',
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
                  Image.asset('assets/images/animegirl.png', fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tercera(username),
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
