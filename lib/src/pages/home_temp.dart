import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components temp"),
      ),
      body: ListView(children: _createItemByMap()),
    );
  }

  /*List<Widget> _createItem() {
    List<Widget> list = <Widget>[];

    for (String option in options) {
      final tempWidget = ListTile(
        title: Text(option),
      );
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }*/

   List<Widget> _createItemByMap(){

     return options.map((e) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(e),
              subtitle: Text("El sub de $e"),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider()
          ],
        );
     }).toList();

   }

}
