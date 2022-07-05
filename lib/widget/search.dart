import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  void _clicked() {
    print("Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      decoration: const InputDecoration(
          prefix: Icon(Icons.search),
          suffix: TextButton(
            onPressed: null,
            child: Text("Search"),
          )),
    );
  }
}
