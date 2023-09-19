import 'package:flutter/material.dart';

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
      return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
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
                )
                ),
                Row(
                  children: [
                    if (_currentPage < slides.length - 1) 
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _currentPage++;
                          });
                        }, 
                        child: const Text ('Next')),
                  ],
                )
          ],
        ),
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