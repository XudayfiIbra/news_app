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
                const Text(
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
                    padding: EdgeInsets.only(left: 10),
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
            const SizedBox(
              height: 25,
            ),
            // filters
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Palestine',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Media',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Magazine',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Business',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),

            // blogs
            Container(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // thumbnail
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/nuclear_f.jpg',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            // title
                            const Text(
                              'Qardho town fights to save its nuclear',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
