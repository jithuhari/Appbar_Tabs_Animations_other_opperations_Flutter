import 'package:appbar_design_transparent_app/screens/earthAnimation.dart';
import 'package:appbar_design_transparent_app/screens/quizHome.dart';
import 'package:appbar_design_transparent_app/screens/textToSpeak.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return DefaultTabController(
      length: 4,
      
          child: Scaffold(
            
              
              appBar: AppBar(

                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  tabs:[
                    Icon(Icons.animation),
                    Icon(Icons.quiz),
                    Icon(Icons.person),
                    Icon(Icons.settings)
                  ] ),

                //elevation: 0,
                
                // ------------color Gradient as backgroud Start----------------

                // flexibleSpace: Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                    
                //       colors: [Colors.red , Colors.green],
                //       begin: Alignment.bottomRight,
                //       end: Alignment.bottomLeft
                      
                //       ),
                      
                //   ),
                // ),

                 //-------------- color Gradient End-----------------

                //------------------image as BackGround start ---------------

                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage
                        (
                          'https://lh3.googleusercontent.com/xI890ORsE7iQktkMYIR4jgicX8gsTMF1QodHvlNU_4AGgplMkzpQ2_3dCs-ktHSDobSoiJkxau2KPNpy3F4FfTKL6w=w640-h400-e365-rj-sc0x00ffffff'
                          ),
                          fit: BoxFit.cover
                          ),
                          
                    ),
                  ),

                //------------------image as BackGround End ---------------

                title: Center(child: Text('App Bar')),

                leading: IconButton(onPressed: (){}, 
                icon: Icon(Icons.menu)
                
                ),

                actions: [
                
                  IconButton(onPressed: (){},
                  icon: Icon(Icons.search)),

                  IconButton(onPressed: (){},
                  icon: Icon(Icons.notifications)),
                ],

              ),     

              body: TabBarView(children: [
                EarthAnimation(),
                QuizPage(),
                TextToSpeakPage(),
                Text('hii'),
                
              ]) 
      ),
    );
  }
}