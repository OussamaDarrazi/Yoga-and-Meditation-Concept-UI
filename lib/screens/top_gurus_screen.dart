import 'package:flutter/material.dart';
import 'package:yoga_and_meditation_app_by_qclay/screens/guru_screen.dart';
import 'dart:ui';
import '../colors_and_styles.dart';

class TopGurusScreen extends StatelessWidget {
  const TopGurusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: myBlack,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
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
                      text: "Yoga Exercises",
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
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 112, 112, 112)),
                    gradient: const LinearGradient(
                        colors: [myBlack, Color.fromARGB(255, 82, 82, 82)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "All Type",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
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
                  padding: const EdgeInsets.all(16),
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
                  padding: const EdgeInsets.all(16),
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
            const SizedBox(
              height: 30,
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  decoration: const BoxDecoration(
                    color: mySecondaryCyan,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    foregroundImage: AssetImage("assets/images/profile pics/Profile 1.jpeg"),
                                    radius: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Anna Juliane",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Yoga Guru",
                                          style: TextStyle(
                                              fontSize: 13, color: myGrey)),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Full Body",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: myBlack,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Yoga",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: myBlack,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 12),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: mySecondaryYellow),
                                    child: const Text(
                                      "Mild",
                                      style: TextStyle(
                                          color: myPrimaryYellow, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              FilledButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) => const GuruScreen(),));
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: const Text("Start"),
                              )
                            ]),
                      ),
                      Expanded(
                        child: Hero(
                          tag: "crab",
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/yoga 1.png"), //assets\images\yoga_1.png
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  decoration: const BoxDecoration(
                    color: mySecondaryPink,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    foregroundImage: AssetImage("assets/images/profile pics/Profile 2.jpeg"),
                                    radius: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Rachel Jules",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Yoga Guru",
                                          style: TextStyle(
                                              fontSize: 13, color: myGrey)),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Lower Body",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: myBlack,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Yoga",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: myBlack,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 12),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: mySecondaryLime),
                                    child: const Text(
                                      "Basic",
                                      style: TextStyle(
                                          color: myPrimaryLime, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              FilledButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: const Text("Start"),
                              )
                            ]),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/yoga 2.png"), //assets\images\yoga_1.png
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  decoration: const BoxDecoration(
                    color: mySecondaryYellow,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    foregroundImage: AssetImage("assets/images/profile pics/Profile 3.jpeg"),
                                    radius: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Michaela Andy",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Yoga Guru",
                                          style: TextStyle(
                                              fontSize: 13, color: myGrey)),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Upper Body",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: myBlack,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Yoga",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: myBlack,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 12),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: mySecondaryPink),
                                    child: const Text(
                                      "Advance",
                                      style: TextStyle(
                                          color: myPrimaryPink, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              FilledButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: const Text("Start"),
                              )
                            ]),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/yoga 3.png"), //assets\images\yoga_1.png
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
