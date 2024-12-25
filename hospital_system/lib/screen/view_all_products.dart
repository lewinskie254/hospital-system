import 'package:flutter/material.dart';
import 'package:hospital_system/widgets/containerized_button.dart';

class ViewAllProducts extends StatefulWidget {
  const ViewAllProducts({super.key});

  @override
  _ViewAllProductsState createState() => _ViewAllProductsState();
}

class _ViewAllProductsState extends State<ViewAllProducts> {
  String? selectedItem; // Declare selectedItem to hold the selected value

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    final List<String> titleItems = [
      "Product ID",
      "Product Name",
      "Category ID",
      "Supplier ID",
      "Unit Stock",
      "Unit Price",
      "Reorder Level"
    ];

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 69, 74, 245),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.07),
          child: Column(
            children: [
              // Title at the top
              Padding(
                padding: EdgeInsets.all(deviceHeight * 0.023),
                child: Text(
                  "View All Products",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: deviceHeight * 0.029,
                  ),
                ),
              ),

              // Fixed GridView for the row at the top
              SizedBox(
                height: deviceHeight * 0.09, // Set the height of the grid
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7, // Number of items in the row
                    mainAxisSpacing: 2.0, // Horizontal spacing between items
                    crossAxisSpacing: 2.0, // Vertical spacing between items
                    childAspectRatio:
                        2.0, // Adjusted aspect ratio for better text fitting
                  ),
                  itemCount: 7, // Number of items in the row
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          titleItems[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign:
                              TextAlign.center, // Ensure the text is centered
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Scrollable GridView in the middle
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7, // Number of columns
                    crossAxisSpacing: 2.0, // Spacing between items horizontally
                    mainAxisSpacing: 2.0, // Spacing between items vertically
                    childAspectRatio: 3.0, // Adjust item aspect ratio
                  ),
                  itemCount: 112, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Custom widget at the bottom
              Expanded(
                child: Container(
                    height: deviceHeight * 0.3, // Adjust height as needed
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.1,
                          vertical: deviceHeight * 0.05),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Search By: ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 0.03 * deviceHeight,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceWidth * 0.01,
                                    ),
                                    Container(
                                      color: Colors.white.withOpacity(0.9),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.all(deviceHeight * 0.01),
                                        child: DropdownButton<String>(
                                          value: selectedItem,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedItem =
                                                  newValue; // Update selectedItem
                                            });
                                          },
                                          items: titleItems
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceWidth * 0.05,
                                    ),
                                    Text(
                                      "Search: ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 0.03 * deviceHeight,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                        child: SearchBar(
                                      leading: Icon(Icons.search),
                                    ))
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerzedButton(
                                        icon: Icons.search, text: "Search"),
                                    ContainerzedButton(
                                        icon: Icons.refresh, text: "Refresh"),
                                    ContainerzedButton(
                                        icon: Icons.close, text: "Close")
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
