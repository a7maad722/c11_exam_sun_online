import 'package:c11_exam_sun_online/screens/Moody%20App/exerciseCategory.dart';
import 'package:c11_exam_sun_online/screens/Moody%20App/slider_item.dart';
import 'package:c11_exam_sun_online/screens/Moody%20App/status.dart';
import 'package:c11_exam_sun_online/screens/Moody%20App/text_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class MoodyApp extends StatefulWidget {
  static const String routeName = 'Moody';
  MoodyApp({super.key});

  @override
  State<MoodyApp> createState() => _MoodyAppState();
}

class _MoodyAppState extends State<MoodyApp> {
  // int? _value = 1;

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Image.asset(
            'assets/images/Moody assets/logo.png',
            width: 40,
            height: 40,
            alignment: Alignment.centerRight,
          ),
          title: Text(
            'Moody',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w700,
              fontFamily: 'Kefa',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {},
                icon: badges.Badge(
                  position: badges.BadgePosition.custom(end: 1, bottom: 1),
                  badgeContent: Text(''),
                  child: ImageIcon(
                    AssetImage('assets/images/Moody assets/Icon.png'),
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Color(0xff667085),
          backgroundColor: Colors.white,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  ImageIcon(AssetImage('assets/images/Moody assets/home.png')),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Moody assets/category.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage('assets/images/Moody assets/date.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/Moody assets/profile.png')),
              label: '',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, ',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff371B34),
                        ),
                      ),
                      Text(
                        'Sara Rose',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff371B34),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'How are you feeling today ?',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff371B34),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Status(
                        image: 'assets/images/Moody assets/love.png',
                        label: 'Love',
                      ),
                      Status(
                        image: 'assets/images/Moody assets/cool.png',
                        label: 'Cool',
                      ),
                      Status(
                        image: 'assets/images/Moody assets/happy.png',
                        label: 'Happy',
                      ),
                      Status(
                        image: 'assets/images/Moody assets/sad.png',
                        label: 'Sad',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextItem(label: 'Feature'),
                  SizedBox(
                    height: 24,
                  ),
                  CarouselSlider.builder(
                    itemCount: 3,
                    options: CarouselOptions(
                      padEnds: false,
                      autoPlay: false,
                      height: 168,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                      disableCenter: true,
                      initialPage: 0,
                    ),
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        SliderItem(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller, // PageController
                      count: 3,
                      effect: SlideEffect(
                          spacing: 8.0,
                          radius: 35.0,
                          dotWidth: 6.50,
                          dotHeight: 6.50,
                          paintStyle: PaintingStyle.fill,
                          strokeWidth: 1.5,
                          dotColor: Color(0xffD9D9D9),
                          activeDotColor:
                              Color(0xff98A2B3)), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  TextItem(label: 'Exercise'),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseCategory(
                        image: 'assets/images/Moody assets/relaxation.png',
                        label: 'Relaxation',
                        color: Color.fromARGB(255, 234, 224, 249),
                      ),
                      ExerciseCategory(
                        image: 'assets/images/Moody assets/mediation.png',
                        label: 'Mediation',
                        color: Color.fromARGB(255, 250, 228, 244),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExerciseCategory(
                        image: 'assets/images/Moody assets/breathing.png',
                        label: 'Breathing',
                        color: Color.fromARGB(255, 252, 240, 229),
                      ),
                      ExerciseCategory(
                        image: 'assets/images/Moody assets/yoga.png',
                        label: 'Yoga',
                        color: Color.fromARGB(255, 224, 248, 252),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
