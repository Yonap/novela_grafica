import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:terest/main.dart';
import 'package:terest/primera.dart';

class GamePage extends StatefulWidget {
  final String username;

  const GamePage(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
                image: AssetImage('assets/images/ome.jpeg'),
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
                        fontWeight: FontWeight.w300,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'Te encuentras en Tokio Japon, en una pequeña ciudad llamada Ome. ',
                              speed: const Duration(milliseconds: 100)),
                          TyperAnimatedText(
                              'Solias vivir en la ciudad de Nagaroto, pero tuviste problemas familiares y por eso terminaste en Ome. ',
                              speed: const Duration(milliseconds: 100)),
                          TyperAnimatedText(
                              'Caminas por la calle y encuentras un folleto de la universidad llamada Shinhwa, que es de hecho, bastante popular en Tokio...',
                              speed: const Duration(milliseconds: 100)),
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: 3),
                Container(
                  color: Colors.black.withOpacity(0.4),
                  child: SizedBox(
                    width: 160.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Bobbers',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('¡Hola, ${widget.username}!',
                              speed: const Duration(milliseconds: 30)),
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
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: Image.asset(
                'assets/images/iconmen.png',
                width: 60,
                height: 60,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 10000),
              delay: const Duration(milliseconds: 10000),
              child: ElevatedButton(
                onPressed: () async {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, primaryAnimation) =>
                          Folleto(widget.username),
                      transitionsBuilder:
                          (context, animation, primaryAnimation, child) {
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

class Folleto extends StatefulWidget {
  final String username;

  const Folleto(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FolletoState createState() => _FolletoState();
}

class _FolletoState extends State<Folleto> {
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
                image: AssetImage(
                  'assets/images/uno.gif',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Image.asset('assets/images/diez(1)folleto.png',
                  fit: BoxFit.fill),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 550),
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
                              'Simplemente lo ignoras y prosigues con tu camino hacia el 6-six, a comprar algo de ramen.  ',
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
            alignment: const Alignment(1, 0.99),
            child: FadeInRight(
              duration: const Duration(milliseconds: 5000),
              delay: const Duration(milliseconds: 5000),
              child: ElevatedButton(
                onPressed: () async {
                  AudioManager.playButtonSound();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Primera(widget.username),
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
