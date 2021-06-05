import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class EarthAnimation extends StatefulWidget {
  const EarthAnimation({ Key? key }) : super(key: key);

  @override
  _EarthAnimationState createState() => _EarthAnimationState();
}

class _EarthAnimationState extends State<EarthAnimation> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return Stack(
          
          children: [
            Container(
            
            decoration: BoxDecoration(
              
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://cdn.theatlantic.com/thumbor/VCoUZjXa6W3jOoQ9yG4pFlR59LY=/80x43:2688x1999/1200x900/media/img/mt/2015/10/Cygnus_v3_BandW/original.jpg'))
            ),
            ),

           Center(
             child: TweenAnimationBuilder(
               tween: Tween<double>(begin: 0 , end: 5), 
               duration: Duration(seconds: 10), 
               builder: (_, double angle ,__){
                 return Transform.rotate(
                   angle: angle,
                   child: Image(
                     width: 300,
                     image: AssetImage('Assets/images/earth.png'),),
                   );
                 
               }
               ),)

       
      ],
    );
  }
}