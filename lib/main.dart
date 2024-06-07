import 'package:dars/controllers/course_controller.dart';
import 'package:dars/controllers/note_controller.dart';
import 'package:dars/controllers/plan_controller.dart';
import 'package:dars/notifier/theme_notifier.dart';
import 'package:dars/views/course_screen.dart';
import 'package:dars/views/home_screen.dart';
import 'package:dars/views/note_screen.dart';
import 'package:dars/views/plans_screen.dart';
import 'package:dars/views/quiz_screen.dart';
import 'package:dars/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NoteController()),
        ChangeNotifierProvider(create: (_) => PlanController()),
        ChangeNotifierProvider(create: (_) => CourseController()),
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeNotifier.currentTheme,
      home: HomeScreen(),
      routes: {
        '/notes': (context) => NoteScreen(),
        '/plans': (context) => PlansScreen(),
        '/courses': (context) => CourseScreen(),
        '/settings': (context) =>
            SettingsScreen(toggleTheme: themeNotifier.toggleTheme),
        '/quiz': (context) => QuizScreen(),
      },
    );
  }
}
