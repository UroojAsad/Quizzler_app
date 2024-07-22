import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'question.dart';
import 'quizzler_brain.dart';

QuizBrain     quizBrain = QuizBrain();
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

  void correctAnswere(bool userPickAnswere){
    bool correctAnswere= quizBrain.getQuestioAnswere();
    setState(() {
    if (userPickAnswere == correctAnswere ){
      Scorekeeper.add(
          Icon(Icons.check,
            color: Colors.green,)
      );}
    else {
      Scorekeeper.add(
          Icon(Icons.close,
            color: Colors.red,)
      );}
    quizBrain.nextQuestion();
    }
    );
  }

  List<Icon> Scorekeeper =[
    // Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),
    // Icon(
    //   Icons.close,
    //   color: Colors.red,
    // ),

  ];

  // List<String> Questions = [
  // 'You can lead a cow down stairs but not up stairs.',
  //  'Approximately one quarter of human bones are in the feet.',
  // 'A slug\'s blood is green.'
  // ];
  //
  // List<bool> answere =[
  //   false,
  //   true,
  //   true
  // ];
  //
  // Question q1=Question('You can lead a cow down stairs but not up stairs.', false),




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
                quizBrain.getQuestionText(),
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
                correctAnswere(true);
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
                correctAnswere(false);

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
          children: Scorekeeper,

        )
      ],
    );
  }
}


