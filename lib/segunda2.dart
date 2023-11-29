import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:terest/main.dart';

class Segunda2 extends StatefulWidget {
  final String username;

  const Segunda2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Segunda2State createState() => _Segunda2State();
}

class _Segunda2State extends State<Segunda2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic5();
  }

  @override //emula unua funcion principal
  Widget build(BuildContext context) {
    return Scaffold(
      //es el cuerpo de la funcion principal
      body: Stack(
        //organiza los elementos del cuerpo dentro ded otra funcion
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/cuatro.gif'), //ruta de la imagen
                fit: BoxFit
                    .fill, //especifica que ocupe todo el espaciom  de la pantalla
              ),
            ),
          ),
          Center(
            //coloca todo dentro de la funcion en un punto especifico
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, //pone el contenido en el centro
              children: [
                Container(height: 500), //empuja a la funcion hacia arriba
                Container(
                  color: Colors.black
                      .withOpacity(0.6), //el fondo de la caja de texto
                  child: SizedBox(
                    width: 350.0, //tamaño de la caja de fondo
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0, //tamaÑo de la letra
                        fontFamily: 'Bobbers',
                        color: Colors.white, //color de la letra
                        fontWeight: FontWeight.w100, //diseñode la letra
                      ),
                      child: AnimatedTextKit(
                        //inicializa la animacion del texto
                        animatedTexts: [
                          TyperAnimatedText(
                              'Haz decidio no hacer nada y solo la vez de lejos.', //especifica el texto que se mostrará
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}:  \nes muy hermosa, pero no tengo el coraje para hablarle.', //especifica el texto que se mostrará
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Solo compras y vuelves a casa.', //especifica el texto que se mostrará
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation:
                            false, //rompe el bucle y lo muestra solo una vez
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center, //coloca el contenido en el centro
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.3, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.6, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/personaje-2.png',
                  fit: BoxFit.fill), //ruta de la imagen
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99), //posision del boton
            child: FadeInRight(
              duration:
                  const Duration(milliseconds: 5000), //duracion de la animacion
              delay:
                  const Duration(milliseconds: 5000), //retraso de la animacion
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Tercera2(
                              widget.username), //ruta al presionar el boton
                      transitionsBuilder: //construye la animacion del texto
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, //color del boton
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)), //color del texto
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99), //posicion dek boton
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/',
                    (Route<dynamic> route) =>
                        false); //reinicia el programa a la primer funcion llamada
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, //color del boton
                minimumSize: const Size(60, 30), // Aumenta el tamaño del botón
              ),
              child: const Text('inicio',
                  style: TextStyle(
                      color: Colors
                          .white)), //muestra el texto y especifica el color que tendra
            ),
          )
        ],
      ),
    );
  }
}

class Tercera2 extends StatefulWidget {
  final String username;

  const Tercera2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Tercera2State createState() => _Tercera2State();
}

class _Tercera2State extends State<Tercera2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/doormido.gif'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 500),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'estas recostado en tu cama pensando en lo que sucedio ese dia... ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nPor que?? Soy bastante idiota por no haberle hablado. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Entre enojado y apenado te decides volver a la misma tienda esperando encontrarla.',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Cuarto2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
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

class Cuarto2 extends StatefulWidget {
  final String username;

  const Cuarto2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Cuarto2State createState() => _Cuarto2State();
}

class _Cuarto2State extends State<Cuarto2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/temprano.gif'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 500),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Despiertas y te levantas.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Te apetece algo de una famosa cafetería pero estás indeciso, al final decides ir.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Te vistes y te arreglas con la intención de volver a encontrar a la chica del 6-six',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Quinto2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
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

class Quinto2 extends StatefulWidget {
  final String username;

  const Quinto2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Quinto2State createState() => _Quinto2State();
}

class _Quinto2State extends State<Quinto2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic5();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/biblioteca.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                ),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'Caminas por la calle pensando en aquella chica, de repente te encuentras afuera de una libreria.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Observas dentro a una chica muy hermosa y piensas... ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}Esta vez no dejare pasar la oportunidad. \nEntras y te acercas a ella.',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Sexto2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
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

class Sexto2 extends StatefulWidget {
  final String username;

  const Sexto2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Sexto2State createState() => _Sexto2State();
}

class _Sexto2State extends State<Sexto2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/biblioteca.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                ),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              '${widget.username}: \nHola mucho gusto, me llamo ${widget.username}, y tu?? ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Katsuki: \nHola me llamo Katsuki, que tal? ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Sin querer te quedas perplejo porque no pensaste que te responderia.',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Image.asset('assets/images/personaje-3.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Septimo2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
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

class Septimo2 extends StatefulWidget {
  final String username;

  const Septimo2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Septimo2State createState() => _Septimo2State();
}

class _Septimo2State extends State<Septimo2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/biblioteca.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                ),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              '${widget.username}: \nsolo queria decirte lo hermosa que estas, sinceramente me recordaste a alguien ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Katsuki: \nGracias, aunque debo decir que eso fue un poco extraño...',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nTe gustaria salir a tomar algo despues?? \nClaro, por que no? Si quieres puede ser en la tarde. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Katsuki: \nClaro, por que no? Si quieres puede ser en la tarde. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nPerfecto, entoces nos vemos aqui al rato.',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Image.asset('assets/images/personaje-3.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Ultimo2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("continuar",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
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

class Ultimo2 extends StatefulWidget {
  final String username;

  const Ultimo2(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Ultimo2State createState() => _Ultimo2State();
}

class _Ultimo2State extends State<Ultimo2> {
  @override
  void initState() {
    super.initState();
    AudioManager.playBackgroundMusic5();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pensando.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                ),
                Container(
                  color: Colors.black.withOpacity(0.6),
                  child: SizedBox(
                    width: 350.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'FELICIDADES!! ${widget.username} \nAl fin te atreviste a hablarle a una chica. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Regresas a casa, reflexionas lo sucedido y de inmediato buscas que ponerte para tu cita.',
                              speed: const Duration(milliseconds: 80)),
                        ],
                        isRepeatingAnimation: false,
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
              ),
              child: const Text('REINICIAR',
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
