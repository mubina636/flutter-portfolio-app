import 'package:flutter/material.dart';

class OmbordingScreen extends StatefulWidget {
  const OmbordingScreen({super.key});

  @override
  State<OmbordingScreen> createState() => _OmbordingScreenState();
}

class _OmbordingScreenState extends State<OmbordingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int activePage = 0;

  final List<Widget> _pages = [
    const Pageone(),
    const Pageone(),
    const Pageone(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                activePage = index;
              });
            },
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
        ],
      ),
    );
  }
}

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            'Wide range of Food\nCategories & more',
          ),
          const Text(
            'Browse through our extensive list of restaurants and dishes '
            'and when you are ready to order, simply add your desired items '
            'to your cart and checkout.',
          ),
        ],
      ),
    );
  }
}