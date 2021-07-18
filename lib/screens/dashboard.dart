import 'package:arduuno_app/screens/components.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('arduuno', style: TextStyle(fontSize: 24.0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dehaze), 
            onPressed: () {}
          )
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Image.asset('assets/images/logo_arduuno.png'),
          Container(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Resource('Componentes', Icons.settings, () => _components(context)),
                  Resource('Projetos', Icons.create, () {}),
                  Resource('Agenda', Icons.calendar_today, () {}),
                  Resource('Ideias', Icons.lightbulb, () {}),
                  Resource('Gerar projeto', Icons.casino, () {}),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class Resource extends StatelessWidget {
  final String _text;
  final IconData _icon;
  final Function _function;

  Resource(this._text, this._icon, this._function);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: InkWell(
          onTap: _function,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              border: Border.all(
                color: Theme.of(context).accentColor,
              ),

              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            padding: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _text,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),

                Icon(_icon, color: Colors.white)
              ],
            )
          )
        ),
      ),
    );
  }
}

void _components(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Components()));
}