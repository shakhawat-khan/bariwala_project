import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'sing_up.dart';
import 'const.dart';



void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (MyApp()),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //int _controller;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:   SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                  color: kupperColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                    ),
                    Text('Bariwala',style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'BauhausBold',
                      color: klowerColor,
                      fontSize: 40
                    ),
                    ),



                    Container(
                      height: 300,
                      width: 200,
                      child: SvgPicture.asset('assets/svg/new.svg',
                        color: klowerColor,
                      ),
                    ),

                  ],
                )
              ),
              Container(
                width: 400,
                height: 380,
                decoration: const BoxDecoration(
                  color: klowerColor,
                ),

                child:Column(
                  children: <Widget>[
                    const SizedBox(height: 30,),
                    Container(
                      height: 50, width:300 ,
                        child: buildNumber()
                    ),
                    SizedBox(height: 20,),
                    Container(
                        height: 50, width:300 ,
                        child: buildpassword()
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                      height: 40,
                      width: 120,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: kupperColor,
                        color: kupperColor,
                        elevation: 5.0,
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: const Center(
                            child: Text('LOGIN',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),


                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){},

                      child: const Text("Forget Password?",
                        style: TextStyle(
                         decoration: TextDecoration.underline,
                          color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),

                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        const Text('New to Bank Apps?',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,

                        ),
                        ),
                        InkWell(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
                          },

                          child: const Text("Sign Up",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                decoration: TextDecoration.underline
                            ),
                          ),

                        ),




                      ],
                    )


                  ],
                ) ,

              ),




            ],
          ),
        )
    );




  }
}

final  numberController = TextEditingController();
final  passwordController = TextEditingController();

Widget buildNumber()=>  TextField(
  keyboardType: TextInputType.number,
  controller: numberController,
  textInputAction: TextInputAction.done,

  decoration: InputDecoration(
    hintText: '01xxxxxxxxx',
    border: const OutlineInputBorder(),
    labelText: 'Phone Number',
    labelStyle: const TextStyle(
        color: Colors.black
    ),
    prefixIcon: const Icon(Icons.phone,color: Colors.black,),
    suffixIcon: numberController.text.isEmpty
        ? Container(width: 0)
        : IconButton(onPressed: ()=> numberController.clear() , icon:const Icon(
        Icons.close
    )),



    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
  ),
);

Widget buildpassword()=>  TextField(
  keyboardType: TextInputType.text,
  controller: passwordController,
  textInputAction: TextInputAction.done,

  decoration: InputDecoration(
    hintText: 'xxxxxxxxx',
    border: const OutlineInputBorder(),
    labelText: 'Password',
    labelStyle: const TextStyle(
        color: Colors.black
    ),
    prefixIcon: const Icon(Icons.password,color: Colors.black,),
    suffixIcon: passwordController.text.isEmpty
        ? Container(width: 0)
        : IconButton(onPressed: ()=> passwordController.clear() , icon:const Icon(
        Icons.close
    )),



    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
  ),
);

