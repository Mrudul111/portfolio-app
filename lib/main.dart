import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: const Icon(Icons.work),
            nextScreen: const T1(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.rightToLeft,

            backgroundColor: Colors.teal));
  }
}

class T1 extends StatelessWidget {
  const T1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("images/20220319_171255.jpg"),
                  ),
                  const Text(
                    'Mrudul Killedar',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'F L U T T E R    D E V E L O P E R',
                    style: TextStyle(
                      fontFamily: 'BarlowCondensed',
                      fontSize: 20,
                      color: Colors.teal.shade100,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 250.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(

                    margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 25.0),
                    color: Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.add_call, color: Colors.teal,),
                      title: Text(
                        '+91 7489685683',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.teal.shade900,
                          fontFamily: 'BarlowCondensed-Light',

                        ),

                      ),
                    )
                  ),
                  Card(

                    margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 25.0),
                    color: Colors.white,
                      child: ListTile(
                          leading: const Icon(Icons.mail, color: Colors.teal,),
                          title: Text(
                            'mrudulkilledar111@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.teal.shade900,
                              fontFamily: 'BarlowCondensed-Light',

                            ),

                          ),
                      )
                  ),
                ],
              )
          )
        ),

      )
    );
  }
}









