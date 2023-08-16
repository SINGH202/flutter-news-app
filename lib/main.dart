import 'package:flutter/material.dart';
import 'package:news/screens/saved_articles_screen.dart';
import 'package:news/screens/search_screen.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter News App",
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: "/splash-screen",
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        SavedArticles.routeName: (context) => const SavedArticles()
      },
    );
  }
}
