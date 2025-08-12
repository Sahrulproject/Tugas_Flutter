import 'package:flutter/material.dart';

class About8 extends StatelessWidget {
  const About8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 50,
              vertical: 100,
            ),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/im/newprofile.jpeg"),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Text(
                        "msahrulhkim",
                        style: TextStyle(
                          fontFamily: "Lobster",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sosku adalah platform penuh cerita bermacam foto yang memudahkan kamu terhubung dengan teman dan membagikan momen spesial dalam hitungan detik.",
                            style: TextStyle(
                              fontFamily: "Pacifico",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Made by Muhammad Sahrul Hakim",
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text("@ 2025 Goksky"),
            ],
          ),
        ],
      ),
    );
  }
}
