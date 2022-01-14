import 'package:flutter/material.dart';

const kupperColor =  Color(0xff105652);
const klowerColor =  Color(0xffDCEDC1);



class SignupTextfield extends StatelessWidget {

  final TextEditingController  controller;
  final String  hint;
  final String label;
  final TextInputType text1;

  SignupTextfield({required this.controller,required this.hint,required this.label,required this.text1});




  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextField(
        controller: controller,
        keyboardType: text1,
        textInputAction: TextInputAction.done,

        decoration: InputDecoration(
            hintText: hint ,
            border: OutlineInputBorder(),
            labelText: label,
            labelStyle: const TextStyle(
                color: Colors.black
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            )
        ),


      ),
      height: 50, width:300 ,
    );
  }
}


