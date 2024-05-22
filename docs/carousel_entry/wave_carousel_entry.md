# WaveCarouselEntry




- This displays an entry style widget. It does not have a scaffold. Meaning you can add it in a screen if you want.
- It is best fit on mobile size.


- `logo` is a widget that is displayed at the center-left. You can put whatever widget there.

- `background` is a widget to put as a background. Or the background will be the background color of the theme.

- `bottomStroke` is the width of the bottom line at the bottom of photos. Ex: 5
- `bottomStrokeColor` is the color of `bottomStroke`. Ex: Colors.blue


- `start` is the button at the very bottom to display "CONTINUE" OR "GET STARTED".
- `autoSwipleInterval` is the interval in ms to swipe next slide. It must be bigger than 100 to activate the auto swipe.

- `items` is an array that has the title, subtitle and the photo to display in the carousel.

- `titleSpacing` is the spacing between `title` and `subtitle`.


- `bottomGradient` is a widget that displays a graide at the bottom of the photos. Since it is a widget, you can put whatever UI as the `bottomGraident`.

- `indicatorColor` is the color of inactive pagination indicator.
- `indicatorActiveColor` is the color of active pagination indicator.




### Combination of WaveCarouselEntry and SleepWalker

- You can give a decoration of SleepWalker to the background of WaveCarouselEntry.

```dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_kit/social_kit.dart';

class EntryScreen extends StatefulWidget {
  static const String routeName = '/Entry';
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WaveCarouselEntry(
        autoSwipeInterval: 3000,
        bottomStroke: 8,
        bottomStrokeColor: Colors.grey,
        titleSpacing: 16,
        start: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('CONTINUE'),
        ),
        logo: Container(
          width: 72,
          height: 72,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFffe1f1),
          ),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250/?image=400',
              fit: BoxFit.cover,
            ),
          ),
        ),
        items: [
          (
            title: Text(
              "Casual Talk",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              "Please join casual and enjoyable conversations with potential matches using our meeting app. Easily connect and chat.",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
            image: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=90',
              fit: BoxFit.cover,
            ),
          ),
          (
            title: Text(
              "Extends Social Circle",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              "Discover interesting individuals to connect with. Our meeting app makes it easy to broaden your horizons and meet diverse people.",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
            image: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=100',
              fit: BoxFit.cover,
            ),
          ),
          (
            title: Text(
              "Discover New Connections",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              "Our meeting app is designed to help you find new connections and expand your social circle. Join us and meet new people.",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
            image: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=110',
              fit: BoxFit.cover,
            ),
          ),
          (
            title: Text(
              "Meaningful Connections",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              "Create meaningful connections through honest conversations. Our app fosters a friendly and welcoming environment for meeting potential partners.",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            ),
            image: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=120',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
```


- Below is a background widget that you can use it with CarouselEntries. The `EntryBackground` widget uses SleepWalker to make animated background.


```dart
WaveCarouselEntry(
  backgroundWidget: EntryBackground(),
)
```

```dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:social_design_system/social_design_system.dart';

class EntryBackground extends StatelessWidget {
  const EntryBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SleepWalker(
      alignments: const [
        (
          alignment: Alignment.centerLeft,
          duration: Duration(milliseconds: 2000),
        ),
        (
          alignment: Alignment(-.1, .35),
          duration: Duration(milliseconds: 2000),
        ),
        (
          alignment: Alignment(0, .39),
          duration: Duration(milliseconds: 2000),
        ),
        (
          alignment: Alignment(0.9, .2),
          duration: Duration(milliseconds: 1500),
        ),
        (
          alignment: Alignment(1, .3),
          duration: Duration(milliseconds: 1500),
        ),
        (
          alignment: Alignment(.8, .6),
          duration: Duration(milliseconds: 1400),
        ),
        (
          alignment: Alignment(.0, .85),
          duration: Duration(milliseconds: 1400),
        ),
        (
          alignment: Alignment(-.8, .5),
          duration: Duration(milliseconds: 1300),
        ),
        (
          alignment: Alignment(.7, .2),
          duration: Duration(milliseconds: 1200),
        ),
        (
          alignment: Alignment(.8, .1),
          duration: Duration(milliseconds: 1200),
        ),
        (
          alignment: Alignment(.7, .15),
          duration: Duration(milliseconds: 1200),
        ),
        (
          alignment: Alignment(-.1, .25),
          duration: Duration(milliseconds: 1200),
        ),
        (
          alignment: Alignment.centerLeft,
          duration: Duration(seconds: 1),
        ),
      ],
      repeat: true,
      child: SizedBox(
        width: 196,
        height: 196,
        child: Stack(
          children: [
            // Center, Red
            Positioned(
              top: 80,
              left: 50,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.rotationZ(pi / 12), // rotateZ(-pi / 12.0),
                child: Container(
                  width: 99.88,
                  height: 99.88,
                  decoration: ShapeDecoration(
                    color: Colors.red.withAlpha(1),
                    shape: const StarBorder.polygon(
                      sides: 3,
                      pointRounding: 0.5,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.red.shade900.withAlpha(71),
                        blurRadius: 384.4,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                ).animate().fade().scale().rotate().then().rotate(
                      delay: .4.seconds,
                      duration: 2300.seconds,
                      begin: 100,
                      end: 0,
                    ),
              ),
            ),
            //Top, Orange
            Positioned(
              top: 0,
              left: 30,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.rotationZ(-pi / 7), // rotateZ(-pi / 12.0),
                child: Container(
                  width: 99.88,
                  height: 99.88,
                  decoration: ShapeDecoration(
                    color: Colors.orange.withAlpha(1),
                    shape: const StarBorder.polygon(
                      sides: 3,
                      pointRounding: 0.5,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.orange.shade900.withAlpha(71),
                        blurRadius: 384.4,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                ).animate().fade().scale().rotate().then().rotate(
                      delay: .4.seconds,
                      duration: 6000.seconds,
                      begin: 0,
                      end: 100,
                    ),
              ),
            ),

            /// Bottom, Blue
            Positioned(
              top: 90,
              left: 50,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.rotationZ(-pi / 5), // rotateZ(-pi / 12.0),
                child: Container(
                  width: 99.88,
                  height: 99.88,
                  decoration: ShapeDecoration(
                    color: Colors.blue.withAlpha(1),
                    shape: const StarBorder.polygon(
                      sides: 3,
                      pointRounding: .9,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.blue.shade900.withAlpha(71),
                        blurRadius: 384.4,
                        spreadRadius: 12,
                      ),
                    ],
                  ),
                ).animate().fade().scale().rotate().then().rotate(
                      delay: .4.seconds,
                      duration: 1900.seconds,
                      begin: 0,
                      end: 100,
                    ),
              ),
            ),
          ],
        ).animate().rotate().scale().then().rotate(
              delay: .4.seconds,
              duration: 1900.seconds,
              begin: 100,
              end: 0,
            ),
      ),
    );
  }
}
```

