import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _githubAuthorizeCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 295,
          height: 266,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.3),
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/github.png",
                  height: 60,
                ),
                Text(
                  "GitHub",
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    height: 2.6,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      const Color(0xFF14A307),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Authorize",
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/background.png"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 160.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Welcome To",
                  style: GoogleFonts.leagueSpartan(
                    color: const Color(0xFFEFDFBB),
                    fontSize: 32,
                    height: 1.0,
                  ),
                ),
                Text(
                  "DevDate",
                  style: GoogleFonts.leagueSpartan(
                    color: const Color(0xFFEFDFBB),
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                    letterSpacing: 0.001,
                  ),
                ),
                const SizedBox(height: 50),
                _githubAuthorizeCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
