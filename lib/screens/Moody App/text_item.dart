import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextItem extends StatelessWidget {
  const TextItem({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff000000),
          ),
        ),
        Row(
          children: [
            Text(
              'See more',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff027A48),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: Color(0xff027A48),
            ),
          ],
        ),
      ],
    );
  }
}
