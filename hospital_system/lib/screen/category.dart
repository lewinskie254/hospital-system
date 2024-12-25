import 'package:flutter/material.dart';

class CategoryClass extends StatelessWidget {
  const CategoryClass({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
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
                  "Category Details",
                  style: TextStyle(
                      color: Colors.white, fontSize: deviceHeight * 0.029),
                ),
              ),
              Container(
                padding: EdgeInsets.all(deviceHeight * 0.023),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 74, 245),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: SizedBox(
                  height: deviceHeight *
                      0.3, // Set the height to 30% of the screen height
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category Details",
                        style: TextStyle(
                          fontSize: deviceHeight * 0.026,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(2),
                        },
                        children: [
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
                                    hintText: "Enter ID",
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
                                "Category Name:",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: deviceHeight *
                                    0.0729, // Set the height for consistency
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Name",
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
                                "Category Description:",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: deviceHeight *
                                    0.0729, // Set the height for consistency
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Description",
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
                  ),
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
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
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
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
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
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
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
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
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
                          "Record Operations",
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.add),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('Add'),
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
                                      Icon(Icons.edit),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('Edit'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: deviceHeight * 0.0437),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.delete),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('Delete'),
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
                                      Icon(Icons.refresh),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('Refresh'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: deviceHeight * 0.0437),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.view_agenda),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('View'),
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
                                      Icon(Icons.close),
                                      SizedBox(
                                          width:
                                              8), // Adds spacing between icon and text
                                      Text('Close'),
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
            ],
          ),
        ),
      ),
    );
  }
}
