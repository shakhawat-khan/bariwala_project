import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SingUp extends StatefulWidget {

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

  var _textControllerName;
  var _textControllerPnumber;
  var _textControllerEmail;
  var _textControllerPass;
  bool checkBoxValue = false;



  @override
  void initState() {
    // TODO: implement initState
    _textControllerName = TextEditingController();
    _textControllerPnumber = TextEditingController();
    _textControllerEmail = TextEditingController();
    _textControllerPass = TextEditingController();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kupperColor,
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child:Container(
                        child: SingleChildScrollView(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              SizedBox(height: 10,),
                              Container(
                                height: 100,
                                width: 150,
                                child: SvgPicture.asset('assets/svg/signup_logo.svg',
                                  color: Colors.white,
                                ),
                              ),
                              Text('Connect to your home',style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                        color: kupperColor,
                      )
                  ),
                  Expanded(
                      flex: 5,
                      child:Container(
                        child:SingleChildScrollView(

                          child: Column(
                            children:<Widget> [
                              SizedBox(height: 40,),
                              SignupTextfield(controller: _textControllerName, label: 'Your Name',hint: 'ABC',text1: TextInputType.text,),
                              SizedBox(height: 20,),
                              SignupTextfield(controller: _textControllerPnumber, label: 'Phone Number',hint: '01*********',text1: TextInputType.number,),
                              SizedBox(height: 20,),
                              SignupTextfield(controller: _textControllerEmail, label: 'Email',hint: 'abc@abc.com',text1: TextInputType.emailAddress,),
                              SizedBox(height: 20,),
                              SignupTextfield(controller: _textControllerPass, label: 'Password',hint: '********',text1: TextInputType.visiblePassword,),
                              SizedBox(height: 20,),
                              Row(
                                children: <Widget>[

                                  //SizedBox(width: 35,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Checkbox(value: checkBoxValue,
                                        onChanged: (checkBoxValue)
                                        {
                                          setState(() {
                                            this.checkBoxValue  = checkBoxValue!;
                                          });
                                        }
                                    ),
                                  ),
                                  const Flexible(child:
                                  Padding(
                                    padding: EdgeInsets.only(right: 35),
                                    child: Text('''By signing up, you agree to bariwala\s term of use & privacy policy.'''),
                                  )
                                  ),
                                ],
                              ),
                              
                              SizedBox(height: 10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  ElevatedButton(onPressed: (){},
                                    child: Text('SIGN UP'),
                                    style: ElevatedButton.styleFrom(
                                      primary: kupperColor,
                                      side: BorderSide(
                                        width:5.0,
                                        color: kupperColor,
                                      )
                                    )
                                  ),
                                  SizedBox(width: 20,),
                                  Text('or'),
                                  SizedBox(width: 20,),
                                  ElevatedButton(onPressed: (){},
                                      child: Text('CANCEL',style: TextStyle(
                                        color: Colors.black
                                      ),),
                                      style: ElevatedButton.styleFrom(

                                          primary: klowerColor,
                                          side: BorderSide(
                                            width:2.0,
                                            color: kupperColor,
                                          )
                                      ),
                                  ),



                                ],
                              ),

                              SizedBox(height: 10,),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Already signed up?'),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },

                                    child: const Text("Log In",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.orange,
                                        fontSize: 18,
                                      ),
                                    ),

                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                        color: klowerColor,
                      )
                  )
                ],
              )
          ),
        ],
      ),
    )
    ;
  }
}

