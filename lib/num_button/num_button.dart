import 'package:flutter/material.dart';

class numButton extends StatelessWidget {
  final String text;
  //final int fillColors;

  const numButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 58, height: 58),
          child: ElevatedButton(
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            //style: ButtonStyle(
            //foregroundColor: Colors(0xFF0000),
            //    ),
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                side: BorderSide(color: Colors.black),
                shape: CircleBorder(),
                shadowColor: Colors.grey),
          ),
        ),
      ),
    );

    /*child: SizedBox(
            width: 65,
            height: 65,
            child: CircleAvatar(
              onPressed: () {},
              backgroundColor: Color(0xff4c505b),

              radius: 30,
              child: Text(text),
              //color: Colors.blueGrey,
            ))*/
  }
}
