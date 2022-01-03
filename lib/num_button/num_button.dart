import 'package:flutter/material.dart';

class numButton extends StatelessWidget {
  final String text;

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
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            onPressed: () {},
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
  }
}
