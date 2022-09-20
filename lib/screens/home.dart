import 'package:flutter/material.dart';

import '../model/post.dart';
import 'model/post_block.dart';
import 'new_post.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String getMonth() {
    if (DateTime.now().month == 1) {
      return "January";
    }
    if (DateTime.now().month == 2) {
      return "February";
    }
    if (DateTime.now().month == 3) {
      return "March";
    }
    if (DateTime.now().month == 4) {
      return "April";
    }
    if (DateTime.now().month == 5) {
      return "May";
    }
    if (DateTime.now().month == 6) {
      return "June";
    }
    if (DateTime.now().month == 7) {
      return "July";
    }
    if (DateTime.now().month == 8) {
      return "August";
    }
    if (DateTime.now().month == 9) {
      return "September";
    }
    if (DateTime.now().month == 10) {
      return "October";
    }
    if (DateTime.now().month == 11) {
      return "November";
    }
    if (DateTime.now().month == 12) {
      return "December";
    } else {
      return "Null";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "The Buzz",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2EB9AC),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Text("Today, "),
                                  Text(getMonth()),
                                  const Text(" "),
                                  Text((DateTime.now().day).toString())
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 200.0),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NewPost()));
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      const Text(
                        "My Feed",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 18.0),
                    ],
                  ),
                ],
              ),
              PostBlock(post: posts[0]),
              PostBlock(post: posts[1]),
              PostBlock(post: posts[2]),
              PostBlock(post: posts[3]),
              PostBlock(post: posts[4]),
            ],
          ),
        ),
      ),
    );
  }
}
