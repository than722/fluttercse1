import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return isMobile
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: const Color.fromARGB(255, 36, 25, 197),
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "*",
                              style: TextStyle(
                                fontSize: 100,
                                color: Colors.white,
                                height: 0.8,
                              ),
                            ),
                            Text(
                              "Hello",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                height: 0.8,
                              ),
                            ),
                            Text(
                              "Saleskip!👋🏻",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                height: 2,
                              ),
                            ),
                            Text(
                              "Skip repetitive and manual sales-marketing tasks. Get highly productive through automation and save tons of time!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "© 2022 SaleSkip. All rights reserved.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildLoginForm(),
                    ],
                  ),
                )
              : Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.4,
                      color: const Color.fromARGB(255, 36, 25, 197),
                      padding: const EdgeInsets.all(70),
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
                          Spacer(),
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
                    Expanded(child: _buildLoginForm()),
                  ],
                );
        },
      ),
    );
  }

  Widget _buildLoginForm() {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ethan Gil",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              height: 2,
            ),
          ),
          Row(
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 170, 169, 169),
                ),
              ),
              Text(
                "Create a new account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          TextField(
            obscureText: true,
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
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
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
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
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
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot password? ",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 156, 155, 155),
                  ),
                ),
                Text(
                  "Click here",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
