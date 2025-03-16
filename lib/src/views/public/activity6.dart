import 'package:flutter/material.dart';

class Activity6 extends StatelessWidget {
  const Activity6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        automaticallyImplyLeading: false, // Removes the back button
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: ImageContainer()), // Using the ImageContainer widget
          SizedBox(height: 20), // Space between containers
          Center(child: ImageContainerText2()), // New container with "Text #2"
        ],
      ),
          floatingActionButton: Align(
        alignment: Alignment.bottomLeft, // Aligns the button to the left at the bottom
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20.0), // Add space from the left edge and bottom
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewItemPage()), // Navigate to NewItemPage
              );
            },
            child: Icon(Icons.add), // Plus icon
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextPage()), // Navigate to TextPage
        );
      },
      child: Container(
        width: 200,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start (left)
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Rounded corners for the image
              child: Image.network(
                'https://www.motortrend.com/uploads/2022/04/s15-silvia-specR-hood-off.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover, // Image will not take up the full box
              ),
            ),
            SizedBox(height: 8), // Space between image and text
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey, // Highlight "Text" with a grey background
              child: Text(
                "Text",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5), // Adjusted spacing
            Text(
              "Text # 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// New container for "Text #2" in the Dashboard
class ImageContainerText2 extends StatelessWidget {
  const ImageContainerText2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start (left)
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Rounded corners for the image
            child: Image.network(
              'https://www.motortrend.com/uploads/2022/04/s15-silvia-specR-hood-off.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover, // Image will not take up the full box
            ),
          ),
          SizedBox(height: 8), // Space between image and text
          Container(
            padding: EdgeInsets.all(5),
            color: Colors.grey, // Highlight "Text" with a grey background
            child: Text(
              "Text",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5), // Adjusted spacing
          Text(
            "Text # 2", // Updated text
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}



class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text #1"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          // Image at the top of the page
          Image.network(
            'https://www.motortrend.com/uploads/2022/04/s15-silvia-specR-hood-off.jpg',
            width: double.infinity,
            height: 250, // Set height for the image
            fit: BoxFit.cover, // Ensure the image covers the top space
          ),
          SizedBox(height: 20), // Space between image and first text
          // Text with grey badge background
          Padding(
            padding: const EdgeInsets.only(left: 16.0), // Padding to the left
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Text",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Space between badge and second text
          // Main text below the badge
          Padding(
            padding: const EdgeInsets.only(left: 16.0), // Padding to the left
            child: Text(
              "Text #1",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class NewItemPage extends StatelessWidget {
  const NewItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Item Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Placeholder(),
              ),
            ),
            SizedBox(height: 20), // Space between the container and textfield
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter file path',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between the text field and button
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Browse'),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between browse field and title field
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Space between title field and description field
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Space between description field and price field
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Padding for the symbol
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  child: Text(
                    '₱',  // Philippine Peso symbol
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(width: 8), // Space between symbol and text field
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      hintText: '0.00',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.save),
        ),
      ),
    );
  }
}





