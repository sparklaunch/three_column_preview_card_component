import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatelessWidget {
  final String title;
  final String content;
  final Color color;
  const Item(
      {super.key,
      required this.title,
      required this.content,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/images/$title.svg"),
            const SizedBox(height: 30),
            Text(
              title.toUpperCase(),
              style: GoogleFonts.bigShouldersDisplay(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: color,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                elevation: 3,
              ),
              child: const Text("Learn More"),
            )
          ],
        ),
      ),
    );
  }
}
