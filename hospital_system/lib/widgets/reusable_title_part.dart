import 'package:flutter/material.dart';

class ReusableTitlePart extends StatelessWidget {
  final List<Widget> widgets; // Declare the list of widgets

  // Constructor now takes the list of widgets
  const ReusableTitlePart({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromARGB(255, 69, 74, 245),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.07),
        child: Column(
          children: [
            // Pass the widgets list here
            ...widgets, // Spread the list of widgets
          ],
        ),
      ),
    );
  }
}
