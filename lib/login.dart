import 'package:ebank/num_button/num_button.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 100),
              child: Column(children: [
                Text(
                  "Welcome in",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "eBank",
                  style:
                      TextStyle(color: Colors.deepOrangeAccent, fontSize: 50),
                ),
              ]),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.42,
                    right: 40,
                    left: 40),
                child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Put in PIN to log In",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))))),
            Container(
              padding: EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 8.0, top: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(children: [
                    numButton(text: "1"),
                    numButton(text: "2"),
                    numButton(text: "3"),
                  ]),
                  SizedBox(height: 16.0),
                  Row(children: [
                    numButton(text: "4"),
                    numButton(text: "5"),
                    numButton(text: "6"),
                  ]),
                  SizedBox(height: 16.0),
                  Row(children: [
                    numButton(text: "7"),
                    numButton(text: "8"),
                    numButton(text: "9"),
                  ]),
                  SizedBox(height: 16.0),
                  Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.backspace_outlined, color: Colors.white),
                        iconSize: 45.0),
                    numButton(text: "0"),
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.backspace_outlined, color: Colors.black),
                        iconSize: 45.0),
                  ]),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                          color: Colors.deepOrangeAccent,
                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward, color: Colors.black),
                          iconSize: 45.0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
