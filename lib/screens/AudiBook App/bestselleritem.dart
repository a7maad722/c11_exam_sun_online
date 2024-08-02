import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 144,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 229, 229, 236),
              borderRadius: BorderRadius.circular(12)),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 120,
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image(
                      image: AssetImage(
                        'assets/images/AudiBook assets/lastimage.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Light Mage',
                    style: GoogleFonts.poppins(
                      color: Color(0xff010104),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Laurie Forest',
                    style: GoogleFonts.poppins(
                      color: Color(0xff6A6A8B),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
