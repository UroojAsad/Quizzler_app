import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( Quizzler());
}

class Quizzler extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: quizpage(),
        )

        ),
      ),
    );
  }
}
class quizpage extends StatefulWidget {

  @override
  State<quizpage> createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
                padding: EdgeInsets.all(10.0),
              child: Text(
                'This is where question text will go',
            textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(15.0),
          child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero ),
                backgroundColor : Colors.green ,
              ),
              onPressed: ()
              {
            },
            child: Text(
              'True',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
            ),
          
          ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero ),
                backgroundColor : Colors.red ,
              ),
              onPressed: ()
              {
              },
              child: Text(
                'False',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),

            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}


