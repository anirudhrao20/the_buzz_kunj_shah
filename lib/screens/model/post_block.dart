import 'package:flutter/material.dart';
import '../../model/post.dart';

class PostBlock extends StatefulWidget {
  PostBlock({required this.post});

  final Post post;

  @override
  _PostBlockState createState() => _PostBlockState();
}

class _PostBlockState extends State<PostBlock> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 14.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE4F2F0),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22.0, 14.0, 22.0, 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.post.postBody,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const Icon(
                    Icons.heart_broken,
                    size: 16.0,
                    color: Color(0xff2EB9AC),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    (widget.post.numberOfLikes).toString(),
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff2EB9AC)
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.comment,
                    size: 16.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    (widget.post.numberOfComments).toString(),
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff2EB9AC)
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
