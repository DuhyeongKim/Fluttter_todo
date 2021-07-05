import 'package:flutter/material.dart';


class SingUpPage extends StatefulWidget {

  SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sing Up"),
          ],
        ),
      ),
      ),
    );
  }
}
