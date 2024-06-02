import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/HomePage');
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/airplane_1.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Contact Lost with Air Boeing 737-500 After Take Off',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 27,
                color: Theme.of(context).colorScheme.primary,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // user info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // avatar and username
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/profile_image.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'BBC Somalia',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
                // published day
                Text(
                  '01 Jun 2024',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  // p1
                  const Text(
                    'Nico Bezuidenhout said in a message to customers that from June until 4 July the firm would be "combining nearby regional routes to reduce the level of flying we do to fit our current available fleet".',
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // p2
                  const Text(
                    'He said leasing more planes and crew had been "challenging given that multiple UK and European airlines find themselves confronted with the same parts supply shortages as we do".',
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // p3
                  const Text(
                    'Problems included the grounding of a plane due to corrosion, another plane awaiting landing gear parts amid a global spare parts shortage, and the "simultaneous pre-scheduled heavy maintenance" of another plane.',
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // p4
                  const Text(
                    'The challenges we face are not due to the launch of new routes or any conflict between profitability and reliability but stem from unforeseeable events that have unexpectedly reduced our capacity.',
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
