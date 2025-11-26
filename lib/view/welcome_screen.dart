import 'package:flutter/material.dart';
import 'package:messages_app/view/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message,size: 100,),
            Text("Welcom To Chat App",
            style: TextStyle(fontSize: 32,
            fontWeight: FontWeight.bold),),
            IconButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HomeScreen(),));
            }, icon: Icon(Icons.arrow_forward,
              size: 50,color: Colors.white,))
          ],
        ),
      ),
    );
    
  }
}