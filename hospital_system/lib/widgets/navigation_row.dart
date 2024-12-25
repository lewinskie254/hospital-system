import 'package:flutter/material.dart';

class NavigationRow extends StatelessWidget {
  const NavigationRow({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.0291),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
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
                                width: 8), // Adds spacing between icon and text
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
                                width: 8), // Adds spacing between icon and text
                            Text('Previous'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: deviceHeight * 0.0437),
                  Expanded(
                    child: SearchBar(
                      hintText: "Search for patient by name",
                      leading: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                WidgetStateProperty.all(Colors.amber),
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 69, 74, 245),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.search)),
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
                                width: 8), // Adds spacing between icon and text
                            Text('Next'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceHeight * 0.01,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.last_page),
                            SizedBox(
                                width: 8), // Adds spacing between icon and text
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
    );
  }
}
