import 'package:flutter/material.dart';
import 'package:tt/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          IntroPageContent(
            title: 'Welcome to My App',
            description: 'Discover amazing features and functionalities.',
            image: 'images/im1.jpeg',
            isLastPage: false,
          ),
          IntroPageContent(
            title: 'Easy to Use',
            description: 'Intuitive interface designed for you.',
            image: 'images/img2.jpeg',
            isLastPage: false,
          ),
          IntroPageContent(
            title: 'Get Started Now',
            description: 'Let\'s dive in and explore the app.',
            image: 'images/img3.jpeg',
            isLastPage: true,
          ),
        ],
      ),
    );
  }
}

class IntroPageContent extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final bool isLastPage;

  IntroPageContent({
    required this.title,
    required this.description,
    required this.image,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(image),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          if (isLastPage) // Show button only on the last page
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Text('Get Started'),
              ),
            ),
        ],
      ),
    );
  }
}
