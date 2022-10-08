import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onPress;

  const MyButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.colors = const Color(0xffa5a5a5)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: colors),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
