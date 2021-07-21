import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextEditingController textController;
  final String tip;
  final String label;
  final IconData icon;

  FormInput({this.textController, this.tip, this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        controller: textController,
        style: TextStyle(
          fontSize: 22.0
        ), 

        decoration: InputDecoration(
          hintText: tip,
          labelText: label,
          labelStyle: TextStyle(color: Theme.of(context).accentColor),
          focusColor: Theme.of(context).accentColor,

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor)
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor)
          )
        )
      )
    );
  }
}