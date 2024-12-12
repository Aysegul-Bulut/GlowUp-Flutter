import 'package:flutter/material.dart';
import 'package:glowup_project/register.dart';
import 'package:glowup_project/login.dart';
import 'package:glowup_project/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 169, 15, 180),
              Color(0xff281537),
            ]
          )
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 270,
                height: 270,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('GlowUp\'a Hoşgeldiniz',style: TextStyle(
              fontSize: 30,
              color: Colors.white
            ),),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('ANASAYFA',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('GİRİŞ YAP',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Register()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('KAYIT OL',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),),
              ),
            ),
            const Spacer(),
          ]
        ),
      ),
    );
  }
}
