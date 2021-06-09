//import 'package:appbar_design_transparent_app/screens/new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeakPage extends StatefulWidget {
  
  @override
  _TextToSpeakPageState createState() => _TextToSpeakPageState();
  
}

class _TextToSpeakPageState extends State<TextToSpeakPage> {
  
  final FlutterTts flutterTts = FlutterTts();
  String textSample = 'Birds are a group of warm-blooded vertebrates constituting the class Aves, characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton. ';

  Future _speak() async {
    await flutterTts.setLanguage("en-AU");
    await flutterTts.setPitch(1);
    // await flutterTts.setVoice({});
    // print (await flutterTts.getVoices);
    await flutterTts.speak(textSample);
    
   

  }
  
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      backgroundColor: Colors.grey,
          body: Column(
        

        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          Image(image: NetworkImage('https://cdn.download.ams.birds.cornell.edu/api/v1/asset/202984001')),

           

          Center(

            
            child: ElevatedButton(
              child: Text('Speak'),

              onPressed: (){
              _speak();

              

            },
            
            ),
          ),

          Text(
            textSample,
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,           
            ),
            textAlign: TextAlign.justify,
            ),

            
        ],
        
      ),
    );
  }
}