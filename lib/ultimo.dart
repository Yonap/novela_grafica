import 'package:flutter/material.dart';
import 'package:terest/ultimo1.dart';

class Ultimo extends StatelessWidget {
  final String username;

  const Ultimo(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/universidad.jpeg'),
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
                        'Ella te acompaña a la universidad y cuando llegan vas directamente a \nservicios escolares. \nte dan indicaciones y una lista con los requisitos, te das cuenta que no tienes problemas \ncon entrar en la universidad \nExcelente!! que te parece si te ayudo con el papeleo. \nSeria de gran ayuda, gracias \nella se ofrece a acompañarte a tu casa por los papeles completos para completar tu inscripcion',
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
                    builder: (context) => Ultimo1(username),
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
