import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD55858),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              child: Text(
                "DevDate",
                style: GoogleFonts.leagueSpartan(
                  color: const Color(0xFFEFDFBB),
                  fontWeight: FontWeight.w800,
                  fontSize: 45,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 300,
              color: const Color(0xFFEFDFBB),
            )
          ],
        ),
      ),
    );
  }
}
