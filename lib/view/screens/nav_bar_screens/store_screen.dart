import 'package:flutter/material.dart';
import 'package:travel_app/view/widgets/button.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({Key? key}) : super(key: key);

  List images = [
    'asset/images/woman.png',
    'asset/images/woman_3.png',
    'asset/images/woman_2.png',
    'asset/images/pngegg.png',
    'asset/images/woman_4.jpg',
  ];

  List<String> titles = [
    'Supplement Plan',
    'Training Plan',
    'Meal Plan',
    'Supplement Plan',
    'Meal Plan',
  ];

  List<Color> colors = [
    Colors.black,

    // Color.fromRGBO(221, 78, 137, 1),
    Colors.pinkAccent,
    Color.fromRGBO(72, 77, 99, 1),
    Color.fromRGBO(163, 222, 109, 1.0),
    Color.fromRGBO(175, 25, 27, 1.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20.0),
                itemCount: images.length,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      // margin: const EdgeInsets.only(top: 30.0),
                      height: 160,
                      width: 100,
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titles[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
