import 'package:flutter/material.dart';

import 'colors_and_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoga and Meditation App',
      theme: ThemeData(
        fontFamily: "Plus Jakarta Sans",
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF242424),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    color: myBlack,
                    border: Border.all(
                        color: Colors.white.withOpacity(0.1), width: 5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Top Guru's For\n",
                      style: Theme.of(context).textTheme.displayLarge),
                  TextSpan(
                      text: "Yoga Exercices",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.bold))
                ])),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 112, 112, 112)),
                      gradient: LinearGradient(colors: [myBlack, const Color.fromARGB(255, 82, 82, 82)], begin: Alignment.centerLeft, end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "All Type",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: mySecondaryYellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Full Body",
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: mySecondaryPink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Upper",
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: myPrimaryCyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Lower",
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
