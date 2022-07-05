import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Users {
  String login;
  String name;
  String blog;
  String location;
  String bio;
  String twitter_username;
  int public_repos;
  int followers;
  int following;
  DateTime created_at;

  Users(
      {required this.login,
      required this.name,
      required this.blog,
      required this.location,
      required this.bio,
      required this.twitter_username,
      required this.public_repos,
      required this.followers,
      required this.following,
      required this.created_at});

  Map toJson() => {
        "login": login,
        "name": name,
        "blog": blog,
        "location": location,
        "bio": bio,
        "twitter_username": twitter_username,
        "public_repos": public_repos,
        "followers": followers,
        "following": following,
        "created_at": created_at
      };

  Users.fromJson(Map json)
      : login = json['login'],
        name = json['name'],
        blog = json['blog'],
        location = json['location'],
        bio = json["blog"],
        twitter_username = json["twitter_username"],
        public_repos = json["public_repos"],
        followers = json["followers"],
        following = json["following"],
        created_at = json["created_at"];
}
