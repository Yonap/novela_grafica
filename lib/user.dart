import 'package:flutter/material.dart';
import 'package:terest/startplace.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserPage(),
    );
  }
}

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String username = '';

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
                    'assets/images/imagen6.png'), // Ruta de tu imagen de fondo
                fit: BoxFit.cover,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:
                      200, // Ancho personalizado para centrar la caja de texto
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Introduce tu nombre de usuario',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 19, // Cambia el tamaño del texto del campo
                        fontWeight: FontWeight
                            .bold, // Cambia el grosor del texto del campo
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: username.isNotEmpty
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GamePage(username),
                            ),
                          );
                        }
                      : null, // Desactiva el botón si username está vacío
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Cambia el color del botón a negro
                  ),
                  child: const Text(
                    'Comenzar historia',
                    style: TextStyle(
                      fontSize: 20, // Cambia el tamaño del texto
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Cambia el color del texto
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
