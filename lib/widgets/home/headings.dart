import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  const Headings(
      {super.key,
      required this.recommend,
      required this.subtitle,
      required this.viewMoreFunc});

  final String recommend;
  final String subtitle;
  final void Function() viewMoreFunc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              recommend,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            viewMoreFunc();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'View All',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 14,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
