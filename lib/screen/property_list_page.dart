// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:marries_property/widgets/search_input.dart';


class Slide {
 final String imageUrl;
 final String text;


 Slide({required this.imageUrl, required this.text});
}


class PropertyListPage extends StatefulWidget {
 const PropertyListPage({super.key});


 @override
 _PropertyListPageState createState() => _PropertyListPageState();
}


class _PropertyListPageState extends State<PropertyListPage> {
 final ValueNotifier<Color> _currentColorNotifier = ValueNotifier(Colors.grey);
 // ignore: prefer_final_fields, unused_field
 bool _isButtonAtTop = true;
 Timer? _timer;
 final PageController _pageController = PageController();


 final List<Slide> slides = [
   Slide(imageUrl: 'assets/house02.jpeg', text: 'Bungalow'),
   Slide(imageUrl: 'assets/offer01.jpeg', text: 'Villa'),
   Slide(imageUrl: 'assets/offer02.jpeg', text: 'Appartment'),
 ];


 @override
 void initState() {
   super.initState();
   _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
     // Call a function to change the slide
     _changeSlide();
   });
 }


 void _changeSlide() {
   final nextPage = (_pageController.page?.toInt() ?? 0) + 1;
   if (nextPage < slides.length) {
     _pageController.animateToPage(
       nextPage, // Get current page, add 1
       duration: const Duration(milliseconds: 500), // Animation duration
       curve: Curves.ease, // Animation curve
     );
   } else {
     _pageController.animateToPage(
       0, // Return to the first page if it's the last page
       duration: const Duration(milliseconds: 500), // Animation duration
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
       title: Image.asset('assets/logo.png',
           height: 50), // Add your logo image here
       actions: [
         PopupMenuButton<String>(
           onSelected: (String result) {
             // Handle menu selection here
             print(result);
           },
           itemBuilder: (BuildContext context) {
             return <PopupMenuEntry<String>>[
               const PopupMenuItem<String>(
                 value: 'For Sale',
                 child: Text('For sale'),
               ),
               const PopupMenuItem<String>(
                 value: 'For rent',
                 child: Text('For rent'),
               ),
               const PopupMenuItem<String>(
                 value: 'about',
                 child: Text('about'),
               ),
               const PopupMenuDivider(),
               const PopupMenuItem<String>(
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
           children:
               slides.map((slide) => SlidingObject(slide: slide)).toList(),
         ),
         Column(
           children: [
             //const SearchInput(),
             // nSearch: (query) {
             //     print('Search query: $query');
             //   },  o


             Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   AnimatedContainer(
                     duration: const Duration(milliseconds: 500),
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
                         const SizedBox(width: 20), // Space between buttons
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


 // ignore: prefer_const_constructors_in_immutables
 SlidingObject({required this.slide});


 @override
 Widget build(BuildContext context) {
   // ignore: avoid_unnecessary_containers
   return Container(
     child: Image.asset(
       slide.imageUrl,
       fit: BoxFit.cover,
       width: double.infinity,
       height: double.infinity,
     ),
   );
 }
}


class HoveringButton extends StatefulWidget {
 final String text;
 final VoidCallback onPressed;
 final Color color;


 const HoveringButton(
     {required this.text, required this.onPressed, required this.color});


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
         duration: const Duration(milliseconds: 200),
         width: 100,
         height: 50, // Adjust height to make it rectangular
         decoration: BoxDecoration(
           color: _isHovered
               ? widget.color.withOpacity(0.5)
               : Colors.transparent, // Transparent background color
           borderRadius: BorderRadius.circular(30), // Rounded edges
           border: Border.all(
               color: widget.color, width: 2), // Border color and width
           boxShadow: _isHovered
               ? [
                   const BoxShadow(
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




