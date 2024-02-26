import 'package:flutter/material.dart';

class StackedAvatars extends StatefulWidget {
  const StackedAvatars({super.key});

  @override
  State<StackedAvatars> createState() => _StackedAvatarsState();
}

class _StackedAvatarsState extends State<StackedAvatars> {
  final GlobalKey _layoutBuilder = GlobalKey();

// 24 avatars
  List<String> avatars = [
    "personne_1.jpg",
    "personne_2.jpg",
    "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg",
    // "personne_1.jpg",
    // "personne_2.jpg",
    // "personne_3.jpg"
  ];

  int numberOfAvatarsToDisplay(double maxWidth) {
    int calculatedNumberOfAvatars = (maxWidth - 10) ~/ (30 * 0.75);

    if (calculatedNumberOfAvatars > avatars.length) {
      return avatars.length;
    } else {
      return calculatedNumberOfAvatars - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        key: _layoutBuilder,
        builder: (context, constraints) {
          int numberOfAvatars = numberOfAvatarsToDisplay(constraints.maxWidth);

          return Column(
            children: [
              SizedBox(
                height: 30,
                width: constraints.maxWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: numberOfAvatars == avatars.length
                      ? numberOfAvatars
                      : numberOfAvatars + 1,
                  itemBuilder: (context, index) {
                    if (index != numberOfAvatars) {
                      return Align(
                        widthFactor: 0.55,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/${avatars[index]}",
                          ),
                        ),
                      );
                    } else {
                      return Align(
                        widthFactor: 0.55,
                        child: CircleAvatar(
                          child: Text(
                            "+${avatars.length - numberOfAvatars}",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
