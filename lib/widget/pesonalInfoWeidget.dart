import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, required Icon icon, required String info});



  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
     return Row(
          children: const <Widget>[
              Icon(icon),
              SizedBox( width: 10,),
              Text("San francisco")
          ],
        ),
  }
}