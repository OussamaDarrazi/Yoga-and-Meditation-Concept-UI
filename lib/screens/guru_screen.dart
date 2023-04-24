import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../colors_and_styles.dart';

class GuruScreen extends StatelessWidget {
  const GuruScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            color: myBlack,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: const Color.fromARGB(255, 112, 112, 112)),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 82, 82, 82),
                            myBlack,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          foregroundImage: AssetImage(
                              "assets/images/profile pics/Profile 1.jpeg"),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Anna Juliane",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Yoga Guru",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(128, 255, 255, 255)))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: OverflowBox(
                      maxHeight: 500,
                      alignment: Alignment.topLeft,
                      child: Text("Yoga Exercises\nwith Anna\nJuliane", style: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Hero(
                    tag: "crab",
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/yoga 1.png"),
                            fit: BoxFit.fitHeight
                          ),
                        ),
                      ),
                  ),
                  
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
