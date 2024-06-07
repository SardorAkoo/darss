import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asosiy Saxifa'),
        backgroundColor: Colors.amber,
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Menu Bar',
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              title: const Text('Notes'),
              onTap: () {
                Navigator.pushNamed(context, '/notes');
              },
            ),
            ListTile(
              title: const Text('Plans'),
              onTap: () {
                Navigator.pushNamed(context, '/plans');
              },
            ),
            ListTile(
              title: const Text('Courses'),
              onTap: () {
                Navigator.pushNamed(context, '/courses');
              },
            ),
            ListTile(
              title: const Text('Quiz'),
              onTap: () {
                Navigator.pushNamed(context, '/quiz');
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
