import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/data/cashe/cashed_data.dart';
import 'package:travel_app/view/screens/log_in.dart';
import 'package:travel_app/view/screens/main_screen.dart';
import 'package:travel_app/view/widgets/button.dart';
import 'package:travel_app/data/cashe/cashed_data.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'asset/images/woman.png',
    'asset/images/woman_3.png',
    'asset/images/woman_2.png',
    'asset/images/pngegg.png',
    'asset/images/woman_4.jpg',
  ];

  List titles = ['Supplements', 'Training', 'Meals', 'Supplements', 'Meals'];

  List body = [
    'Workout plans designed to help you achieve your fitness goal - whether losing weight or building muscle',
    'Workout plans designed to help you achieve your fitness goal - whether losing weight or building muscle',
    'Workout plans designed to help you achieve your fitness goal - whether losing weight or building muscle',
    'Workout plans designed to help you achieve your fitness goal - whether losing weight or building muscle',
    'Workout plans designed to help you achieve your fitness goal - whether losing weight or building muscle'
  ];

  List<Color> colors = [
    Colors.black,
    Colors.pink,
    Color.fromRGBO(72, 77, 99, 1),
    Color.fromRGBO(163, 222, 109, 1.0),
    Color.fromRGBO(175, 25, 27, 1.0),
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: colors[index],
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 80.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.sports_gymnastics,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                        child: Row(
                          children: [
                            Text(
                              'SKIP',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 320,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    width: 320,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titles[index],
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          body[index],
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (indexSlider) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: index == indexSlider
                                ? Colors.white
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Button(
                          func: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LogIn();
                            }));
                          },
                          width: 140,
                          color: Colors.transparent,
                          child: Center(
                              child: Text(
                            'Log In',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 28.0,
                      ),
                      Button(
                        color: Colors.white,
                        width: 140,
                        child: Center(
                            child: Text(
                          'Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.normal),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
