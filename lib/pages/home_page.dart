// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            GestureDetector(
              onTap: () {
                print('Main blog is taped');
              },
              child: Container(
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
                                backgroundImage: AssetImage(
                                    'assets/images/profile_image.jpg'),
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
            const SizedBox(
              height: 10,
            ),
            // blog1
            Container(
              child: Row(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(topLeft: Radius.zero),
                    child: Image.asset(
                      'assets/images/nuclear_f.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Qardho is build a nuclear station in \n2024 for electrical energy',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        // other
                        Row(
                          children: [
                            // calender
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/calendar.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '01 Jan 2024',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            // readers
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/time.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '10 min read',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // blog2
            Container(
              child: Row(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(topLeft: Radius.zero),
                    child: Image.asset(
                      'assets/images/airplane_2.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Qardho is build a nuclear station in \n2024 for electrical energy',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        // other
                        Row(
                          children: [
                            // calender
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/calendar.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '01 Jan 2024',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            // readers
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/time.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '10 min read',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // blog3
            Container(
              child: Row(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(topLeft: Radius.zero),
                    child: Image.asset(
                      'assets/images/nuclear.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Qardho is build a nuclear station in \n2024 for electrical energy',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        // other
                        Row(
                          children: [
                            // canlender
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/calendar.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '01 Jan 2024',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            // readers
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/time.svg',
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '10 min read',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
