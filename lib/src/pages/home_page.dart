import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    print(menuProvider.options);
    return ListView(
      children: _createItemList(),
    );
  }

  List<Widget> _createItemList() {
    return [
      ListTile(title: Text("Componente")),
      Divider(),
      ListTile(title: Text("Componente")),
      Divider(),
      ListTile(title: Text("Componente")),
    ];
  }
}
