import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'BBC',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontWeight: FontWeight.w600,
      //       fontSize: 30,
      //     ),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 219, 28, 14),
      //   elevation: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Username
                Text(
                  'Said Dani',
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ),

                // search icon
                SvgPicture.asset(
                  'assets/images/svg/search.svg',
                  color: Colors.black45,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            // Title
            const Text(
              'Breaking News',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(211, 0, 0, 0),
              ),
            ),

            // Main Blog container
            Container(
              child: Column(
                children: [
                  // thumbnail image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/airplane_1.jpg'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // heading text
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Contact Lost with Air Boeing 737-500 After Take Off',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color.fromARGB(185, 0, 0, 0),
                          wordSpacing: 2),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // user information
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            // avatar image
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_image.jpg'),
                              radius: 17,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            // username
                            Text(
                              'BBC somalia',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      // date posted
                      Text(
                        '01 Jun 2024',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
