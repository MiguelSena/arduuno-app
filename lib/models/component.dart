class Component {
  final String name;
  final String type;
  final int id;

  Component({this.name, this.type, this.id});

  @override
  String toString() {
    return 'Name: $name - Type: $type - Id: $id';
  }
}