import 'package:flutter/material.dart';

class Experiment extends StatelessWidget {
  const Experiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1500,
          height: 800,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
              children: [
                Row(
                  children: [
                    Text(
                      "Interstellar", // Title
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold, // Makes the title bold
                      ),
                    ),
                    Spacer(), // Push the small text to the right
                    // Split the 8.7 and /10 into separate Text widgets
                    Text(
                      '8.7',
                      style: TextStyle(fontSize: 16, color: Colors.blue), // "8.7" is blue
                    ),
                    Text(
                      '/10',
                      style: TextStyle(fontSize: 16, color: Colors.grey), // "/10" is grey
                    ),
                  ],
                ),
                SizedBox(height: 0), // Space between the text and movie genre
                Text(
                  "Sci-fi/Adventure", // This will now align to the left under the first text
                  style: TextStyle(fontSize: 20, color: Colors.blue), // Sci-fi/Adventure in blue
                ),
                SizedBox(height: 20), // Space between the text and the image + description
                Row(
                  children: [
                    // Image
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align image and price to the left
                      children: [
                        Container(
                          width: 400, // Width of the image container
                          height: 500, // Height of the image container
                          color: Colors.grey[300], // Background color for the placeholder
                          child: Center(
                            child: Image.network(
                              'https://images.pexels.com/photos/30524548/pexels-photo-30524548/free-photo-of-vintage-carousel-at-night-with-illuminated-horses.jpeg',
                              fit: BoxFit.cover, // Adjust image to cover the container
                            ),
                          ),
                        ),
                        SizedBox(height: 10), // Space between image and price
                        Text(
                          "\$15.00", // Price text
                          style: TextStyle(fontSize: 20, color: Colors.green), // Style the price (green is typical for prices)
                        ),
                      ],
                    ),
                    SizedBox(width: 20), // Space between image and description
                    // Description Text Box
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About the movie:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Interstellar is a 2014 science fiction film directed by Christopher Nolan. "
                              "The film explores the themes of space travel, time dilation, and human survival. "
                              "A group of astronauts embarks on a journey through a wormhole near Saturn to find a new home for humanity, "
                              "which is struggling to survive on Earth due to environmental disasters.",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.justify, // Align text for better readability
                            ),
                            SizedBox(height: 20), // Space between description and actors/directors list
                            // Actors, Directors, Screenwriters, and Producer Section in Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Actors Section in Column
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Actors:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start, // Align actors to the left
                                        children: [
                                          Text("Matthew McConaughey", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("Anne Hathaway", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("Jessica Chastain", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("Michael Caine", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("Matt Damon", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("Casey Affleck", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                          Text("John Lithgow", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10), // Reduced space between actors and directors columns
                                // Directors, Screenwriters, and Producer Section in Row
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Directors Section
                                      Text(
                                        "Directors:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Christopher Nolan", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                        ],
                                      ),
                                      SizedBox(height: 20), // Space between directors and screenwriter
                                      // Screenwriter Section
                                      Text(
                                        "Screenwriter:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Jonathan Nolan", style: TextStyle(fontSize: 16, color: Colors.blue)), // Add screenwriter name
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10), // Reduced space between director+screenwriter and producer columns
                                // Producer Section in Column
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Producer:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Emma Thomas", style: TextStyle(fontSize: 16, color: Colors.blue)), // Add producer name
                                        ],
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
