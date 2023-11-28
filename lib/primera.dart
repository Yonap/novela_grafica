import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:terest/main.dart';
import 'package:terest/segunda.dart';
import 'package:terest/segunda2.dart';

class Primera extends StatefulWidget {
  final String username;

  const Primera(this.username, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrimeraState createState() => _PrimeraState();
}

class _PrimeraState extends State<Primera> {
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
                image: AssetImage('assets/images/siete.gif'),
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
                              'A lo lejos ves a una chica hermosa y radiante...',
                              speed: const Duration(milliseconds: 80)),
                          TyperAnimatedText(
                              '${widget.username}: \nMe pregunto que deberia hacer...',
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
            alignment: const Alignment(-0.99, 0.99),
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
                          Segunda(widget.username),
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
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: const Text("hablarle",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
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
                          Segunda2(widget.username),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1, 0);
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
                child: const Text("no hacer nada",
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
          )
        ],
      ),
    );
  }
}
