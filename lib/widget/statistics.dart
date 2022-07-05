import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const <Widget>[
            Text('Repos'),
            Text("Followers"),
            Text("Following")
          ],
        ),
        Row(
          children: const <Widget>[
            Text('10'),
            Text("234"),
            Text("6"),
          ],
        ),
      ],
    );
  }
}
