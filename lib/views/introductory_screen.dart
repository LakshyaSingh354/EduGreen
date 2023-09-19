import 'package:flutter/material.dart';
import 'package:sih_app/constants/routes.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  int _currentPage = 0;

  List<Map<String,String>> get slides => [
      {
        'image': 'assets/introductory_slides/slide_test_1.jpg',
      },
      {
        'image': 'assets/introductory_slides/slide_test_2.jpg',
      },
      {
        'image': 'assets/introductory_slides/slide_test_3.jpg',
      },
      {
        'image': 'assets/introductory_slides/slide_test_4.jpg',
      }
    ];
    @override
    Widget build(BuildContext context) {
      return Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            itemCount: slides.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return IntroductorySlide(
                imagePath: slides[index]['image']!);
            },
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    homeRoute, 
                    (route) => false);
                }, 
                child: const Text('Get Started'))
              )
        ],
      );
    }
}

// class IntroductorySlidePage extends StatelessWidget {
//   int index = 0;
//   IntroductorySlidePage({required this.index});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



class IntroductorySlide extends StatelessWidget {
  final String imagePath;

  const IntroductorySlide({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitHeight,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, // Adjust the BoxFit as needed
      ),
    );
  }
}

// class _IntroductoryScreenState extends State<Introduction> {
  
  
  
// }