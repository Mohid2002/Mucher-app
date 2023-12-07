import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.cyan,
            ]
          )
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70,left: 20,right: 20),
              child: Image(image: AssetImage('assets/much.png')),
            ),
            const SizedBox(height: 20),
            const Text('Muchar Login',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text('Login',style: (TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text('SIGN UP',style: (TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),),
                ),
              ),
            ),
           //Spacer(),
            const SizedBox(height: 100),
            const Text('Login with Social Media',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            const Padding(
              padding: EdgeInsets.only(left: 135,right: 135,bottom: 40),
              child: Image(image: AssetImage('assets/logoo2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
