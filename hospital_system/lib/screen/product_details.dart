import 'package:flutter/material.dart';

import '../widgets/containerized_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 69, 74, 245),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.07),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.023),
                child: Text(
                  "Product Details",
                  style: TextStyle(
                      color: Colors.white, fontSize: deviceHeight * 0.029),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.0291),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Padding(
                    padding: EdgeInsets.all(deviceHeight * 0.0262),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Record Navigation",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: deviceHeight * 0.0262,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: deviceHeight * 0.029,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.first_page),
                                      SizedBox(width: 8),
                                      Text('1st Record'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: deviceHeight * 0.02,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.chevron_left),
                                      SizedBox(width: 8),
                                      Text('Previous'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: deviceHeight * 0.0437),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(width: deviceHeight * 0.0437),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.chevron_right),
                                      SizedBox(width: 8),
                                      Text('Next'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: deviceHeight * 0.02,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.last_page),
                                      SizedBox(width: 8),
                                      Text('Last Record'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
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
                                          "Product ID:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Product ID",
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
                                          "Product Name:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Product Name",
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
                                          "Supplier ID:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Supplier ID",
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
                                          "Category ID:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Caterory ID",
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
                                          "Unit Price:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Unit Price",
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
                                          "Units in Stock:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Units in Stock",
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
                                          "Reorder Level:",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: deviceHeight *
                                              0.0729, // Set the height for consistency
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              hintText: "Reorder Level",
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
                    ],
                  ),
                  SizedBox(
                    width: deviceWidth * 0.05,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
