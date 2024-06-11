// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:marries_property/widgets/search_input.dart';

class Slide {
  final String imageUrl;
  final String text;

  Slide({required this.imageUrl, required this.text});
}

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final ValueNotifier<Color> _currentColorNotifier = ValueNotifier(Colors.grey);
  Timer? _timer;
  final PageController _pageController = PageController();

    final List<Slide> slides = [
    Slide(imageUrl: 'assets/sunnyHouse.jpg', text: 'Bungalow'),
    Slide(imageUrl: 'assets/Villa.jpg', text: 'Villa'),
    Slide(imageUrl: 'assets/offer02.jpeg', text: 'Apartment'),
  ];
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      // Call a function to change the slide
      _changeSlide();
    });
  }

  void _changeSlide() {
    final nextPage = (_pageController.page?.toInt() ?? 0) + 1;
    if (nextPage < slides.length) {
      _pageController.animateToPage(
        nextPage, // Get current page, add 1
        duration: Duration(milliseconds: 500), // Animation duration
        curve: Curves.ease, // Animation curve
      );
    } else {
      _pageController.animateToPage(
        0, // Return to the first page if it's the last page
        duration: Duration(milliseconds: 500), // Animation duration
        curve: Curves.ease, // Animation curve
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height:50), // Add your logo image here
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Handle menu selection here
              print(result);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'For Sale',
                  child: Text('For sale'),
                ),
                  PopupMenuItem<String>(
                  value: 'For rent',
                  child: Text('For rent'),
                ),
                
                PopupMenuItem<String>(
                  value: 'about',
                  child: Text('about'),
                ),
                  PopupMenuDivider(),
                PopupMenuItem<String>(
                  value: 'Sign In',
                  child: Text('Sign In'),
                ),
              ];
            },
          ),
        ],
      ),
      
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: slides.map((slide) => SlidingObject(slide: slide)).toList(),
          ),
          Column(
            children: [
              const SearchInput(),
              // nSearch: (query) {
              //     print('Search query: $query');
              //   },  o
              
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HoveringButton(
                        text: 'Buy',
                        color: _currentColorNotifier.value,
                        onPressed: () {
                          print('Buy button pressed');
                        },
                      ),
                      SizedBox(width: 20), // Space between buttons
                      HoveringButton(
                        text: 'Rent',
                        color: _currentColorNotifier.value,
                        onPressed: () {
                          print('Rent button pressed');
                        },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class SlidingObject extends StatelessWidget {
  final Slide slide;

  const SlidingObject({required this.slide});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      slide.imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}

class HoveringButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  HoveringButton({required this.text, required this.onPressed, required this.color});

  @override
  _HoveringButtonState createState() => _HoveringButtonState();
}

class _HoveringButtonState extends State<HoveringButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: 100,
          height: 50, // Adjust height to make it rectangular
          decoration: BoxDecoration(
            color: _isHovered ? widget.color.withOpacity(0.5) : Colors.transparent, // Transparent background color
            borderRadius: BorderRadius.circular(30), // Rounded edges
            border: Border.all(color: widget.color, width: 2), // Border color and width
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 18, color: widget.color),
            ),
          ),
        ),
      ),
    );
  }
}
