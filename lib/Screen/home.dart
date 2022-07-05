import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/UserProvider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  void _getUser() {
    if (controller.text == "") {
      Provider.of<UserProvider>(context).setMessage("please Insert User name");
    } else {
      Provider.of<UserProvider>(context).fetchUser(controller.text);
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Container(
              width: 80,
              height: 80,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    "https://www.google.com/search?q=github+icon+image&sxsrf=ALiCzsbGkxHYw_9xu6z5H5Mzq2E-NAVt0A:1657018693109&tbm=isch&source=iu&ictx=1&vet=1&fir=r22vN2hK9iKfMM%252CVduUm5bUIj50qM%252C_%253BKq4l3mSBVj08zM%252CH8p6HHzcTglWAM%252C_%253BG9U2Dai9GVGdNM%252CJY-eVDG-JQ2uaM%252C_%253BF4N7nNsmAvS0zM%252CTXCcjLeV5gKBaM%252C_%253BB9I6N7fsJkqtQM%252CVduUm5bUIj50qM%252C_%253BJdCuiEb92j8WmM%252ChOKru3WHzG-XsM%252C_%253BiC264B70-mLXWM%252CgKdDZrwaX-chPM%252C_%253BV-spLf-SdJn0zM%252CNvj47LTe9yiM4M%252C_%253BGtWVj4ZrA1ALYM%252CqL2c7e-XwGwaqM%252C_%253BdO1l3HgJbssG8M%252CgwkaSaXL7ezQZM%252C_%253Be1XU10nrfC6bRM%252CH8p6HHzcTglWAM%252C_%253BkJ4h0HD-_Dk8iM%252CzdlG_mgsFCn2IM%252C_%253BajgQXMY5F3GqLM%252CWd3tgsZfHApvCM%252C_%253B-HzBZJl2bDXNWM%252C9P3hltt-qdpmzM%252C_%253BCyizs6edE5gNnM%252CVduUm5bUIj50qM%252C_&usg=AI4_-kTRod1jXDOb2Vd-Da7Ax2LFpzm_vw&sa=X&ved=2ahUKEwiqztrUy-H4AhV_i_0HHY_NCg4Q9QF6BAgQEAE#imgrc=G9U2Dai9GVGdNM"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Github",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Github Username",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  child: Text(
                    "Get you folower",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  _getUser();
                })
          ]),
        ),
      ),
    );
  }
}
