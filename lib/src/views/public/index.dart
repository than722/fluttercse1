import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 30, // Increased size
              backgroundColor: Colors.teal,
            ),
            SizedBox(width: 10),
            Text("CSE 1"),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 800, // Box width
          height: 500, // Box height
          decoration: BoxDecoration(
            color: Colors.transparent, // No background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: Colors.teal, // Outline color
              width: 3, // Outline thickness
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20), // Space inside the box
            child: Stack(
              children: [
                // Ovals at the top-left corner
                Row(
                  children: [
                    OvalShape(label: "Tag#1"),
                    SizedBox(width: 10),
                    OvalShape(label: "Tag#2"),
                    SizedBox(width: 10),
                    OvalShape(label: "Tag#3"),
                  ],
                ),
                // Centered text
                Positioned(
                  top: 150,
                  left: 20,
                  child: Text(
                    "As a staff,\nI want to register,\nso that I can use the web service",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                // Larger Outlined Favorite icon at the bottom-left
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Icon(
                    Icons.favorite_border, // Outlined favorite icon
                    color: Colors.teal,
                    size: 60, // Increased size
                  ),
                ),
                // Larger Simple outlined circle at the bottom-right
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 70, // Increased circle size
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.teal, // Outline color
                        width: 3, // Outline thickness
                      ),
                    ),
                  ),
                ),
                // Elevated Button positioned in the center
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Click Me"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Reusable oval widget with a text label
class OvalShape extends StatelessWidget {
  final String label;

  const OvalShape({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, // Oval width
      height: 50, // Oval height
      decoration: BoxDecoration(
        color: Colors.transparent, // No background color
        borderRadius: BorderRadius.circular(50), 
        border: Border.all(
          color: Colors.teal, // Outline color
          width: 3, // Outline thickness
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.teal, // Text color matches border
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
