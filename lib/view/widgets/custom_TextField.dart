import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  String lable;
  TextEditingController controller;
   bool isPassword;
  CustomTextField(this.lable,this.controller,[this.isPassword=false]);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        obscureText: widget.isPassword?obscureText:false,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: widget.isPassword?IconButton(onPressed: (){
              obscureText=!obscureText;
              setState(() {

              });
            },
                icon: obscureText?Icon(Icons.visibility):
                Icon(Icons.visibility_off)):null,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText: widget.lable,
          fillColor: Colors.blue.withOpacity(.2),
          filled: true
        ),
      ),
    );
  }
}