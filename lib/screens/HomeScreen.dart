import 'package:flutter/material.dart';
import 'package:personal_book_library_management/widgets/HomeScreenBookWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Your Books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Column(children: [
                HomeScreenBookWidget(
                  imageUrl: "assets/to-kill-a-mockingbird.jpg",
                  title: "To Kill a mocking Bird",
                ),
                HomeScreenBookWidget(
                  imageUrl: "assets/frankenstein.jpg",
                  title: "Frankenstein",
                ),
                HomeScreenBookWidget(
                  imageUrl: "assets/the-lord-of-the-rings.jpg",
                  title: "The Lord of the Rings",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
