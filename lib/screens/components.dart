import 'package:arduuno_app/models/component.dart';
import 'package:arduuno_app/screens/component_form.dart';
import 'package:flutter/material.dart';

class Components extends StatefulWidget {
  final List components = [];
  @override
  _ComponentsState createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'), 
      ),

      body: ListView.builder(
        itemCount: widget.components.length,
        itemBuilder: (context, index) {
          final component = widget.components[index];
          return ComponentItem(component);
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {
          final Future<Component> future = Navigator.of(context).push(MaterialPageRoute(builder: (context) => ComponentForm()));
          future.then((newComponent) {
            debugPrint('Future');

            if (newComponent != null) {
              setState(() {
                widget.components.add(newComponent);
              });
            }
          });
        }
      ),
    );
  }
}

class ComponentItem extends StatelessWidget {
  final Component component;

  ComponentItem(this.component);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(component.name.toString()),
        subtitle: Text(component.type.toString()),
      )
    );
  }
}