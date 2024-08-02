import 'package:c11_exam_sun_online/screens/AudiBook%20App/bestselleritem.dart';
import 'package:c11_exam_sun_online/screens/AudiBook%20App/textitem.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AudiBookApp extends StatefulWidget {
  static const String routeName = 'AudiBook';
  const AudiBookApp({super.key});

  @override
  State<AudiBookApp> createState() => _AudiBookAppState();
}

class _AudiBookAppState extends State<AudiBookApp> {
  // int? _value = 1;
  List<String> CategoryName = ['Art', 'Business', 'Comedy', 'Darama'];
  List<String> images = [
    'assets/images/AudiBook assets/Silence.png',
    'assets/images/AudiBook assets/Speaker.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Image.asset(
            'assets/images/AudiBook assets/Logo Small.png',
            width: 40,
            height: 40,
            alignment: Alignment.centerRight,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Audi',
                style: TextStyle(
                  color: Color(0xff4838D1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SF-Pro-Display',
                ),
              ),
              Text(
                'Books',
                style: TextStyle(
                  color: Color(0xff4838D1),
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'SF-Pro-Display',
                ),
              ),
              Text(
                '.',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF-Pro-Display',
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {},
                icon: SizedBox(
                  width: 40,
                  height: 40,
                  child: ImageIcon(
                    AssetImage(
                      'assets/images/AudiBook assets/Setting.png',
                    ),
                    color: Color(0xff4838D1),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Color(0xff4838D1),
          unselectedItemColor: Color(0xff6A6A8B),
          backgroundColor: Colors.white,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            color: Color(0xff4838D1),
          ),
          unselectedLabelStyle: TextStyle(
            color: Color(0xff6A6A8B),
          ),
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/AudiBook assets/Home.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/AudiBook assets/Search.png')),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/AudiBook assets/Document.png')),
              label: 'Library',
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textItem(label: 'Categories'),
                  SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    children: List.generate(
                      CategoryName.length,
                      (int index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Chip(
                            padding: EdgeInsets.all(8),
                            label: Text('${CategoryName[index]}'),
                            // color of selected chip
                            backgroundColor: Color.fromARGB(255, 232, 232, 232),
                            side: BorderSide(
                              color: Colors.transparent,
                            ),
                            // selected chip value
                            // onselected method
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  textItem(label: 'Recommended For You'),
                  SizedBox(
                    height: 24,
                  ),
                  CarouselSlider.builder(
                    itemCount: images.length,
                    options: CarouselOptions(
                      padEnds: false,
                      autoPlay: false,
                      height: 300,
                      enlargeCenterPage: false,
                      viewportFraction: 0.63,
                      disableCenter: true,
                      initialPage: 0,
                    ),
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: AssetImage(images[itemIndex]),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  textItem(label: 'Best Seller'),
                  SizedBox(
                    height: 16,
                  ),
                  BestSellerItem(),
                ],
              ),
            ),
          ],
        ));
  }
}
