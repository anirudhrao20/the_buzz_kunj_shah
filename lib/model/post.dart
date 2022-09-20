import 'package:flutter/material.dart';

class Post {
  String postBody;
  int numberOfLikes;
  int numberOfComments;

  Post({
    required this.postBody,
    required this.numberOfLikes,
    required this.numberOfComments,
  });
}

var posts = [
  Post(postBody: "I propose we move towards adopting", numberOfLikes: 82, numberOfComments: 13),
  Post(postBody: "I have too much homework today", numberOfLikes: 65, numberOfComments: 43),
  Post(postBody: "When is this due? I'm not sure", numberOfLikes: 34, numberOfComments: 54),
  Post(postBody: "Hey guys this is my first post", numberOfLikes: 13, numberOfComments: 6),
  Post(postBody: "What exactly are we supposed to do here?", numberOfLikes: 230, numberOfComments: 188),
];