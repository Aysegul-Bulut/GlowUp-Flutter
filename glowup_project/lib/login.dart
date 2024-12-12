import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 169, 15, 180),
              Color(0xff281537),
            ]),
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 60.0, left: 22),
            child: Text(
              'Merhaba\nGiriş Yap !',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            height: double.infinity,
            width: double.infinity,
            child:  Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.check,color: Colors.grey,),
                      label: Text('E-posta',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color.fromARGB(255, 169, 15, 180),
                      ),)
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                        label: Text('Şifre',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Color.fromARGB(255, 169, 15, 180),
                        ),)
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text('Şifremi unuttum.',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xff281537),
                    ),),
                  ),
                  const SizedBox(height: 70,),
                  Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 169, 15, 180),
                          Color(0xff281537),
                        ]
                      ),
                    ),
                    child: const Center(child: Text('GİRİŞ YAP',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),),),
                  ),
                  const SizedBox(height: 150,),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Hesabınız yok mu?",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                        Text("Kayıt Ol",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
