import 'package:arduuno_app/screens/component_form.dart';
import 'package:flutter/material.dart';

class Components extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'), 
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ComponentForm())),
      ),
    );
  }
}