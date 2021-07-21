import 'package:arduuno_app/components/form_input.dart';
import 'package:arduuno_app/models/component.dart';
import 'package:flutter/material.dart';

class ComponentForm extends StatefulWidget {
  @override
  _ComponentFormState createState() => _ComponentFormState();
}

class _ComponentFormState extends State<ComponentForm> {
  final TextEditingController _nameController = TextEditingController();
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar componente')
      ),

      body: Column(
        children: <Widget>[
          FormInput(
            textController: _nameController,
            tip: 'Led',
            label: 'Nome do componente',   
          ),

          Container(
            padding: EdgeInsets.all(15.0),
            child: DropdownButton(
              value: dropdownValue,
              style: TextStyle(color: Theme.of(context).accentColor),

              hint: Text(
                'Tipo do seu componente',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 22.0,
                ),
              ),

              items: <String>['Sensor', 'Motor', 'Atuador', 'Genérico', 'Microcontrolador', 'Outros'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 20.0
                    )
                  ),
                );
              }).toList(),

              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                if (dropdownValue != null && _nameController.text != "") {
                  final newComponent = Component(name: _nameController.text, type: dropdownValue, id: 1);
                  debugPrint(newComponent.toString());
                  Navigator.pop(context, newComponent);
                } else {
                  debugPrint('Dados invalidos');
                }
              },

              child: Text('Criar'), 
              color: Theme.of(context).accentColor,
              textColor: Theme.of(context).primaryColor,
            ),
          )
        ]
      )
    );
  }
}