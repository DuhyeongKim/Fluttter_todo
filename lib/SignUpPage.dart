import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;


class SingUpPage extends StatefulWidget {

  SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

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
            buttonItem("assets/google.svg","Continue with Google",25),
            SizedBox(height: 15,
            ),
            buttonItem("assets/kakao.svg","Continue with Kakao",25),

            SizedBox(height: 15,),
            textItem(),
          ],
        ),
      ),
      ),


    );
  }
  Widget buttonItem(String imagepath, String buttonName, double size){
    return Container(
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
            SvgPicture.asset(imagepath, height:size, width: size,),
            SizedBox(width: 15,),
            Text(buttonName, style: TextStyle(color:Colors.white,
                fontSize: 17),),
          ],
        ),
      ),
    );
  }

  Widget textItem(){
    return Container(
      width: MediaQuery.of(context).size.width-70,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 1, color: Colors.grey,
            ),
          )
        ),
      ),
    );
  }
}
