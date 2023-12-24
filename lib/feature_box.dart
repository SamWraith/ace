import 'package:ace/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.descText,
  });
  final Color color;
  final String headerText;
  final String descText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 35,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(
          left: 15,
          right: 5,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: "Cera Pro",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Pallete.blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              descText,
              style: const TextStyle(
                fontFamily: "Cera Pro",
                color: Pallete.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
