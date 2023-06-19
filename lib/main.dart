import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(bmi());
}

class bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCUTTA',
      theme: ThemeData(primaryColor: Colors.black),
      home: const bmiState(),
    );
  }
}

class bmiState extends StatefulWidget {
  const bmiState({super.key});

  @override
  State<StatefulWidget> createState() {
    return BmiState();
  }
}

class BmiState extends State<bmiState> {
  var weightCintro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        EdgeInsets.only(bottom: 3, top: 3, right: 10, left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BMI CALCULATER',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 3, top: 3, right: 10, left: 10),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade400,
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/male.png'))),
                            ),
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade400,
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/woman.png'))),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 3, top: 3, right: 10, left: 10),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      suffixIcon: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: FaIcon(
                                              CupertinoIcons.plus_circle_fill,
                                              color: Colors.black,
                                            ),
                                          )),
                                      prefixIcon: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: FaIcon(
                                              CupertinoIcons.minus_circle_fill,
                                              color: Colors.black,
                                            ),
                                          ))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Container(
                                  width: 120,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'KG',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 3, top: 3, right: 10, left: 10),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'HEIGHT',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    suffixIcon: Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: FaIcon(
                                            CupertinoIcons.plus_circle_fill,
                                            color: Colors.black,
                                          ),
                                        )),
                                    prefixIcon: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: FaIcon(
                                          CupertinoIcons.minus_circle_fill,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Container(
                                  width: 120,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: const Center(
                                    child: Text(
                                      'CM',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15),
                                    ),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              const Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        EdgeInsets.only(bottom: 3, top: 3, right: 10, left: 10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'AGE',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 7),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FaIcon(
                                        CupertinoIcons.minus_circle_fill,
                                        color: Colors.black,
                                      )),
                                ),
                                suffixIcon: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: FaIcon(
                                      CupertinoIcons.plus_circle_fill,
                                      color: Colors.black,
                                    ),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 3, top: 3, right: 10, left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 50,
                            width: 340,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green),
                                  child: const Text('CALCULATE')),
                            ))
                      ],
                    )),
              ),
            ],
          ),
        )));
  }
}
