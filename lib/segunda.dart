import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:terest/main.dart';
import 'package:terest/user.dart';

class Segunda extends StatefulWidget {
  final String username;

  const Segunda(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SegundaState createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {
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
                image: AssetImage('assets/images/cuatro.gif'),
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
                              '${widget.username}: \nHo... Hola! me llamo ${widget.username}, y tu? ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nMe llamo JinSun Katanawa, mucho gusto. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText('${widget.username}: \nEstudias?',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nSi, en la ciudad de Tokio en la Universidad de Shinhwa ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nYo pensaba inscribirme ahi...',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nDe verdad??  Es una excelente universidad. Espero podamos vernos pronto tengo que irme... ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nSi, hasta pronto.',
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
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.7, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/personaje-2.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.98),
            child: FadeInRight(
              duration: const Duration(milliseconds: 15000),
              delay: const Duration(milliseconds: 15000),
              child: ElevatedButton(
                onPressed: () async {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Tercera(widget.username),
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
            alignment: const Alignment(1, -0.99),
            child: ElevatedButton(
              onPressed: () {
                AudioManager.playBackgroundMusic4();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(60, 30),
              ),
              child: const Text('atras', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class Tercera extends StatefulWidget {
  final String username;

  const Tercera(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TerceraState createState() => _TerceraState();
}

class _TerceraState extends State<Tercera> {
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
                              'Estas en tu casa, recostado en tu cama. Comienzas a recordar a la chica del 6-six... ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Solo queda esperar soñar con ella. Quiero entrar a esa universidad...',
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
                          Cuarto(widget.username),
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

class Cuarto extends StatefulWidget {
  final String username;

  const Cuarto(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CuartoState createState() => _CuartoState();
}

class _CuartoState extends State<Cuarto> {
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
                          TyperAnimatedText(
                              'El sol sale y por la ventana te acaricia el brillo reluciente del sol, te despiertas poco a poco y te preparas para darte un baño',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Te soprendes pensando en la chica del 6-six. Sales de la regadera, una vez listo, te preparas para salir y desayunas en un a cafeteria cercana...',
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
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Cafeteria(widget.username),
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

class Cafeteria extends StatefulWidget {
  final String username;

  const Cafeteria(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CafeteriaState createState() => _CafeteriaState();
}

class _CafeteriaState extends State<Cafeteria> {
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
                image: AssetImage('assets/images/coffe.jpg'),
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
                              '${widget.username}: \nPuede traerme un cafe y un pastel de frutas por favor?',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Mesera: \nEsta bien goshujin-sama ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Mientras observas a tu alrededor y a lo lejos vuelves a ver a esa hermosa chica.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nEs ella de nuevo, quiza deberia invitarla a tomar algo. ',
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
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.8, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/personaje-3.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Quinto(widget.username),
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

class Quinto extends StatefulWidget {
  final String username;

  const Quinto(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuintoState createState() => _QuintoState();
}

class _QuintoState extends State<Quinto> {
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
                image: AssetImage('assets/images/coffe.jpg'),
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
                              '${widget.username}: \nHo... Hola de nuevo, me recuerdas? soy el chico de ayer ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText('JinSun: \nClaro que recuerdo!! ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nQuieres tomar algo? yo invito.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText('JinSun: \nPor supuesto',
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
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.8, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/personaje-2.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Sexto(widget.username),
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

class Sexto extends StatefulWidget {
  final String username;

  const Sexto(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SextoState createState() => _SextoState();
}

class _SextoState extends State<Sexto> {
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
                image: AssetImage('assets/images/coffe.jpg'),
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
                              '${widget.username}: \nEstaba pensando ir a la universidad a pedir informes al salir de aqui ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nEnserio!! entonces si piensas inscribirte.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nSi quieres puedo acompañarte, igual voy de camino hacia la universidad...',
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
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.8, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/personaje-2.png',
                  fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Ultimo(widget.username),
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

class Ultimo extends StatefulWidget {
  final String username;

  const Ultimo(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UltimoState createState() => _UltimoState();
}

class _UltimoState extends State<Ultimo> {
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
                image: AssetImage('assets/images/uni.gif'),
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
                              'Ella te acompaña a la universidad y cuando llegan vas directamente a servicios escolares.',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'te dan indicaciones y una lista con los requisitos, te das cuenta que no tienes problemas con entrar en la universidad ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nExcelente!! que te parece si te ayudo con el papeleo. ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nSeria de gran ayuda, gracias ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '"Ella se ofrece a acompañarte a tu casa por los papeles completos para completar tu inscripcion" ',
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
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Ultimo1(widget.username),
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

class Ultimo1 extends StatefulWidget {
  final String username;

  const Ultimo1(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Ultimo1State createState() => _Ultimo1State();
}

class _Ultimo1State extends State<Ultimo1> {
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
                image: AssetImage('assets/images/room.gif'),
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
                              'Llegando a tu casa JinSun no puede evitar y te roba un beso ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Tu quedas perplejo ante su reaccion y preguntas... ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nA que vino eso?',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'JinSun: \nPerdon es que tu me pareces muy lindo ',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              'Explotas de los nervios lo que hace desmayarte y te recuesta en sus piernas.',
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
              width: MediaQuery.of(context).size.width *
                  0.4, // Ajusta el ancho según el tamaño de la pantalla
              height: MediaQuery.of(context).size.height *
                  0.8, // Ajusta el alto según el tamaño de la pantalla
              child: Image.asset('assets/images/coneja.png', fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: const Alignment(0.99, -0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 1000),
              delay: const Duration(milliseconds: 1000),
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.playBackgroundMusic4();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const UserPage(),
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
                child: const Text("REINICIAR",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
