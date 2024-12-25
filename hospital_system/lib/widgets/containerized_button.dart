import 'package:flutter/material.dart';

class ContainerzedButton extends StatelessWidget {
  final VoidCallback function;
  final IconData icon;
  final String text;
  final Color? color;
  final double iconSize;
  final double textSize;
  final double padding;
  final double width;
  final double gapSize;
  const ContainerzedButton({
    super.key,
    this.function = _defaultFunction,
    required this.icon,
    required this.text,
    this.color,
    this.iconSize = 0.02,
    this.textSize = 0.02,
    this.padding = 0.045,
    this.width = 0.1,
    this.gapSize = 0.01,
  });

  // Dummy default function that can be overridden
  static void _defaultFunction() {
    print('Default function triggered!');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    // Calculate the padding based on the device height
    final double paddingValue = padding * deviceHeight;

    return GestureDetector(
      onTap: function,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            // Inner padding around the button
            padding: EdgeInsets.all(paddingValue),
            child: Container(
              width: deviceWidth * width,
              color:
                  color ?? Colors.white, // Use provided color, default to white
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: deviceHeight * gapSize, // Space below the button
                  ),
                  Icon(
                    icon,
                    size: iconSize *
                        deviceHeight, // Icon size relative to device height
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: textSize *
                            deviceHeight), // Text size relative to device height
                  ),
                  SizedBox(
                    height: deviceHeight * gapSize, // Space below the button
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01, // Space below the button
          ),
        ],
      ),
    );
  }
}
