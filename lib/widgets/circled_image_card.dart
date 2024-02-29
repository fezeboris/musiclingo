import 'package:flutter/material.dart';

class CircledImageCard extends StatelessWidget {
  const CircledImageCard(
      {super.key, required this.artistName, required this.imageLink});
  final String artistName;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 120,
      // height: 160,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              imageLink,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            artistName,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
