import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class Quiz extends StatefulWidget {
  // const Quiz({ Key? key }) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

      ConfettiController? _confettiController;
      

  @override
  void dispose() {
    
    _confettiController!.dispose();
    
    super.dispose();
  }
  @override

  void initState() {
    
    _confettiController = ConfettiController(duration: Duration(milliseconds: 500));
    
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return Scaffold(

      body: Scaffold(
        body:Container(
         
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('Assets/images/quizbg.jpg'))
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                

                Container(
                  margin:EdgeInsets.all(MediaQuery.of(context).size.height*.035),
                  child: Text('Fill in the blanks.',
                  style:TextStyle(
                    
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[900]
                    
                  ) ,
                  ),
                ),
              ],
            ),
            Row(
                children: [
                Expanded(  
                        child: Center(
                        child: Text('Plants that are big and Strong are called _____________. ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo[900]
                          ),
                    ),
                        ),
                ),
              ],
            ),

            Row(
              children: [
              Image(
                width: 250,
                height: 250,
                image: AssetImage('Assets/images/student.png'),
                ),

                Column(
                  children: [
                    ConfettiWidget(
                confettiController: _confettiController!,
              //shouldLoop: true,
              blastDirection: pi / 2,
              colors: [
                Colors.red,
                Colors.green,
                Colors.yellow,
                Colors.purpleAccent,
                Colors.orange
              ],
              numberOfParticles: 10,
              gravity: .25,
              blastDirectionality: BlastDirectionality.explosive,
              
              emissionFrequency: 0.025,
            ),
                    Container(
                      width: MediaQuery.of(context).size.width*.4,
                      child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent[100]
                        ) ,
                        onPressed:(){
                          _confettiController!.play();
                        },
                        child: Text('Grass',
                        style: TextStyle(
                          color: Colors.indigo[900]
                        ),
                        ),
                        ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.4,
                      child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent[100]
                        ) ,
                        onPressed:(){},
                        child: Text('Tree',
                         style: TextStyle(
                          color: Colors.indigo[900]
                        ),
                        ),
                        ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.4,
                      child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent[100]
                        ) ,
                        onPressed:(){},
                        child: Text('Climbers',
                         style: TextStyle(
                          color: Colors.indigo[900]
                        ),
                        ),
                        ),
                    )
                  ],
                )
            ],)
          ],),
         
          ) ,
        
        ),
      
    );
  }
}