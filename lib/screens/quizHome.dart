import 'package:appbar_design_transparent_app/screens/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({ Key? key }) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return Scaffold(

      body: Center(
        child: ElevatedButton(onPressed: (){
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz()),
  );
        },
        child: Text('Start Quiz'),
        ),
      ),
      
    );
  }
}