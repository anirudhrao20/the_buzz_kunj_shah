import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  static const String id = 'newpost';
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Create Post",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
            ),
            const SizedBox(height: 33.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Title goes here',
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff2EB9AC)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000.0),
                      ))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "POST",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
