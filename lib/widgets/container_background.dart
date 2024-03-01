import 'package:flutter/material.dart';

class ContainerBacground extends StatelessWidget {
  const ContainerBacground({super.key, required this.content});
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 18, right: 18, top: 16, bottom: 0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 14, 4, 31),
            Color.fromARGB(246, 81, 34, 163),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: content,
      )),
    );
  }
}
