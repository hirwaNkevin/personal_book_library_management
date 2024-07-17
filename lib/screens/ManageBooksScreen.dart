import 'package:flutter/material.dart';

class ManageBooksScreen extends StatefulWidget {
  const ManageBooksScreen({super.key, required this.title});

  final String title;

  @override
  State<ManageBooksScreen> createState() => _ManageBooksScreenState();
}

class _ManageBooksScreenState extends State<ManageBooksScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            labelPadding:
                EdgeInsets.symmetric(horizontal: 0), // Remove default padding
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Spacer(), // Adds space between the icon and the text
                    Icon(Icons.edit),
                    Text('Edit a book'),
                    Spacer(), // Adds space between the text and the end of the row
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Spacer(), // Adds space between the icon and the text
                    Icon(Icons.add),
                    Text('New Book'),
                    Spacer(), // Adds space between the text and the end of the row
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Content of Tab 1')),
            Center(child: Text('Content of Tab 2')),
          ],
        ),
      ),
    );
  }
}
