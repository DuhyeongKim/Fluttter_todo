import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
            Text("Sing Up",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width-60,
              height: 60,
              child: Card(
                color: Colors.black,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                      width: 1, color: Colors.grey,
                    ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/google.svg", height:25, width: 25,),
                    SizedBox(width: 15,),
                    Text("Continue with Google"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
