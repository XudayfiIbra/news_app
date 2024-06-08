// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/theme/Toggle.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSection(),
            const SizedBox(height: 20),
            const TitleSection(),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ReadingPage');
              },
              child: const MainBlog(),
            ),
            const SizedBox(height: 25),
            const FilterSection(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  BlogItem(
                    imageUrl: 'assets/images/nuclear_f.jpg',
                    title:
                        'Qardho is building a nuclear station in 2024 for electrical energy and making very fast',
                    date: '01 Jun 2024',
                    readTime: '10 min read',
                  ),
                  BlogItem(
                    imageUrl: 'assets/images/airplane_2.jpg',
                    title:
                        'Diyaarad laga leeyahay qoryacad oo kusoo dhacday wadanka yemen gaar ahaan sanca',
                    date: '01 Jun 2024',
                    readTime: '23 min read',
                  ),
                  BlogItem(
                    imageUrl: 'assets/images/nuclear.jpg',
                    title:
                        'Quraanjo oo markii ugu horeysay isticmaashay hubka sida xun wax ulaaya ee nuclear',
                    date: '01 Jun 2024',
                    readTime: '120 min read',
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

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Said Dani',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                print('tap');
              },
              child: SvgPicture.asset(
                'assets/images/svg/sun.svg',
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              'assets/images/svg/search.svg',
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Breaking News',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class MainBlog extends StatelessWidget {
  const MainBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset('assets/images/airplane_1.jpg'),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Contact Lost with Air Boeing 737-500 After Take Off',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Theme.of(context).colorScheme.primary,
              wordSpacing: 2,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const MainBlogUserInfo(),
      ],
    );
  }
}

class MainBlogUserInfo extends StatelessWidget {
  const MainBlogUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.jpg'),
                radius: 17,
              ),
              const SizedBox(width: 15),
              Text(
                'BBC Somalia',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
        Text(
          '01 Jun 2024',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Palestine',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Media',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Magazine',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Business',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class BlogItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String readTime;

  const BlogItem({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.readTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/calendar.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          date,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/time.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          readTime,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
