import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 1200,
              height: 1000,
              color: const Color.fromARGB(255, 36, 25, 197),
              child: Padding(
                padding: const EdgeInsets.all(150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                        fontSize: 150,
                        color: Colors.white,
                        height: 0.8,
                      ),
                    ),
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        height: 0.8,
                      ),
                    ),
                    Text(
                      "Saleskip!👋🏻",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Text(
                      "Skip repetitive and manual sales-marketing tasks. Get highly productive through automation and save tons of time!",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        height: 2,
                      ),
                    ),
                    Spacer(), // Add space to push the copyright text to the bottom
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "© 2022 SaleSkip. All rights reserved.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(70),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60), // Adjust as needed
                    child: Text(
                      "17 - Gil",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        height: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 110),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      height: 2,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 170, 169, 169),
                        ),
                      ),
                      Text(
                        "Create a new account now",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black, // Black color for the text
                          decoration: TextDecoration.underline, // Underline the text
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                   
                      SizedBox(width: 5), // Space between the texts (optional)
                      Text(
                        "it's FREE! takes less than a minute.",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 170, 169, 169),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between text and text fields
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Space between the email and password fields
                  TextField(
                    obscureText: true, // Hide password text
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 130),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 146, 139, 139),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Login with Google",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Add space below the "Login with Google" button
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forget password? ",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 156, 155, 155),
                          ),
                        ),
                        Text(
                          "Click here",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black, // Black color for the text
                            decoration: TextDecoration.underline, // Underline the text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
