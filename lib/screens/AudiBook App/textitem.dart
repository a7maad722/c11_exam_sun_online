import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textItem extends StatelessWidget {
  const textItem({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff010104),
          ),
        ),
        Text(
          'See more',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff4838D1),
          ),
        ),
      ],
    );
  }
}
