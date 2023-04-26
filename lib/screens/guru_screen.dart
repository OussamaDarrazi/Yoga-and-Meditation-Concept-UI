import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../colors_and_styles.dart';

class GuruScreen extends StatefulWidget {
  const GuruScreen({super.key});

  @override
  State<GuruScreen> createState() => _GuruScreenState();
}

class _GuruScreenState extends State<GuruScreen> {
  bool infoClicked = false;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Text(
                        "Yoga Exercises\nwith Anna\nJuliane",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
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
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
          AnimatedPositioned(
            curve: decelerateEasing,
            duration: const Duration(milliseconds: 500),
            left: infoClicked ? 0 : 100,
            top: infoClicked ? 180 : 620,
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.primaryDelta! < 0) {
                  setState(() {
                    infoClicked = true;
                  });
                } else if (details.primaryDelta! > 0) {
                  setState(() {
                    infoClicked = false;
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: mySecondaryCyan,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: AnimatedCrossFade(
                    firstChild: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total Time",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(.7)),
                            ),
                            const Text(
                              "1 hour",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Kcal burn",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(.7)),
                            ),
                            const Text(
                              "550 kcal",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Total Poses",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(.7)),
                            ),
                            const Text(
                              "20 Poses",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80,
                        )
                      ],
                    ),
                    secondChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Yoga Information",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Container(
                            height: 180,
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                color: myBlack,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text(
                                      "⏳",
                                      style: TextStyle(fontSize: 30),
                                    )),
                                const Spacer(),
                                Text("Total Time",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(.7))),
                                const Text("1 hour",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(25),
                              height: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Kcal burn",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    const Text("Weekly",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(104, 0, 0, 0))),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          children: [
                                            const MyChartBar(
                                              height: 48,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Mon",
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 13))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const MyChartBar(
                                              height: 45,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Tue",
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 13))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const MyChartBar(
                                              height: 47,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Wed",
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 13))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const MyChartBar(
                                              height: 52,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Thu",
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 13))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const MyChartBar(
                                              color: mySecondaryPink,
                                              height: 60,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text("Fri",
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(.4),
                                                    fontSize: 13))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 100,
                          decoration: BoxDecoration(
                              color: mySecondaryPink,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/misc images/yoga pose.png"))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("20 Poses",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("Number of poses in yoga",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(.5)))
                              ],
                            )
                          ]),
                        )
                      ],
                    ),
                    crossFadeState: infoClicked
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 500)),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: decelerateEasing,
            duration: const Duration(milliseconds: 500),
            right: infoClicked ? 0 : 100,
            top: infoClicked ? 560 : 710,
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.primaryDelta! < 0) {
                  setState(() {
                    infoClicked = true;
                  });
                } else if (details.primaryDelta! > 0) {
                  setState(() {
                    infoClicked = false;
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
                child: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 500),
                  crossFadeState: infoClicked
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  firstChild: Row(
                    children: const [
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Yoga and Guru\nDetails",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  secondChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Yoga and Guru Detials",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          height: 230,
                          width: 470,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: mySecondaryYellow,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  right: -40,
                                  top: 0,
                                  child: Image.asset(
                                      height: 210,
                                      fit: BoxFit.contain,
                                      "assets/images/misc images/yoga pose 2.png")),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      CircleAvatar(
                                        radius: 30,
                                        foregroundImage: AssetImage(
                                            "assets/images/profile pics/Profile 1.jpeg"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Anna \nJuliane",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 200,
                                    child: Text(
                                        "Anna provides quality training on yoga, inspires people all over."),
                                  ),
                                  Row(
                                    children: [Container(
                                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                      child: Row(
                                        children: const [
                                          Text("5 stars"),
                                          SizedBox(width: 5,),
                                          Icon(Icons.star, color: Colors.amber,)
                                        ],
                                      ),
                                    ), Container(
                                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                      color: mySecondaryLime),
                                      child: const Text("5 Years ex", style: TextStyle(color: myPrimaryLime),),)],
                                  )
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: const Text(
                  "Buy \$30",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}

class MyChartBar extends StatelessWidget {
  final Color color;
  final double height;

  const MyChartBar(
      {super.key,
      this.color = const Color.fromARGB(255, 184, 184, 184),
      this.height = 40});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 25,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                color,
                color,
                Colors.white,
              ],
            )));
  }
}
