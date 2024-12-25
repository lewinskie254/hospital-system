import 'package:flutter/material.dart';
import 'package:hospital_system/widgets/containerized_button.dart';
import 'package:hospital_system/widgets/navigation_row.dart';
import 'package:hospital_system/widgets/reusable_title_part.dart';

class VisitDetails extends StatelessWidget {
  const VisitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ReusableTitlePart(
        widgets: [
          Text(
            "Visit Details",
            style: TextStyle(
              color: Colors.white,
              fontSize: deviceHeight * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          NavigationRow(),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(deviceHeight * 0.023),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 74, 245),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: SizedBox(
                    width: deviceWidth * 0.575,
                    height: deviceHeight *
                        0.55, // Set the height to 30% of the screen height
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Table(
                          columnWidths: const {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(2),
                          },
                          children: [
                            TableRow(
                              children: [
                                const Text(
                                  "Visit ID:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Visit ID",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Visit Date:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Visit Date",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Visit Time:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Visit Time",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Doctor ID:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Doctor ID",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Patient ID:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Patient ID",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Admission ID:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Admission ID",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                const Text(
                                  "Description:",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: deviceHeight *
                                      0.0729, // Set the height for consistency
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Description",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(
                width: deviceWidth * 0.01,
              ),
              Container(
                width: deviceWidth * 0.25,
                padding: EdgeInsets.all(deviceHeight * 0.023),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 74, 245),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ContainerzedButton(
                      icon: Icons.save,
                      text: "Save",
                      textSize: 0.015,
                      iconSize: 0.03,
                      padding: 0.01,
                      gapSize: 0.01,
                    ),
                    ContainerzedButton(
                      icon: Icons.edit,
                      text: "Edit",
                      textSize: 0.015,
                      iconSize: 0.03,
                      padding: 0.01,
                      gapSize: 0.01,
                    ),
                    ContainerzedButton(
                      icon: Icons.delete,
                      text: "Delete",
                      textSize: 0.015,
                      iconSize: 0.03,
                      padding: 0.01,
                      gapSize: 0.01,
                    ),
                    ContainerzedButton(
                      icon: Icons.refresh,
                      text: "Refresh",
                      textSize: 0.015,
                      iconSize: 0.03,
                      padding: 0.01,
                      gapSize: 0.01,
                    ),
                    ContainerzedButton(
                      icon: Icons.close,
                      text: "Close",
                      textSize: 0.015,
                      iconSize: 0.03,
                      padding: 0.01,
                      gapSize: 0.01,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
