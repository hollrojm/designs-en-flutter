import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'batman_button.dart';

class MainBatmanSingnUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
        textTheme: GoogleFonts.vidalokaTextTheme(),
      ),
      child: BatmanSignUp(),
    );
  }
}

class BatmanSignUp extends StatefulWidget {
  @override
  _BatmanSignUpState createState() => _BatmanSignUpState();
}

class _BatmanSignUpState extends State<BatmanSignUp>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animationLogoIn;

  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animationLogoIn = CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.0, 0.25),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _animationController.forward(from: 0.0);
        },
        /* AnimatedBuilder(
        animation: _animationController,
        Builder: (context, _)
        ){
      return */
        child: Scaffold(
          backgroundColor: Color(0xFF100F0B),
          body: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image(
                  image:
                      AssetImage("assets/gottam-assets/batman_background.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage("assets/gottam-assets/batman_alone.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.5,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage("assets/gottam-assets/batman_logo.png"),
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'WELCOME TO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'GOTHAM CITY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        children: [
                          BatmanButton(
                            text: 'INGRESAR',
                            left: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          BatmanButton(
                            text: 'REGISTRO',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )

        // }
        );
  }
}
