import 'package:flutter/material.dart';
import 'dart:io';

class ShowImage extends StatefulWidget {
  final File imageFile;
  ShowImage(this.imageFile);
  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height * (50 / 100),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topRight,
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.black, width: 2)),
            child: Container(
                alignment: Alignment.center,
                child: Image.file(widget.imageFile, fit: BoxFit.cover))),
        SizedBox(
          height: 15,
        ),
        Card(
          // color: Colors.blueAccent,
          elevation: 4,
          child: Text(
            'Send this image?',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {}, //Confirm Image Submission
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Card(
                  child: Text(
                    'YES',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {}, //Deny Image Submission
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: Card(
                  child: Text(
                    'NO',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
