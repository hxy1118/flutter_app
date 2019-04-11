import 'package:flutter/material.dart';

enum Items{
  FirstItem,SecondItem,ThirdItem,ForthItem
}
class PopMenuPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopupMenuButton<Items>(
        onSelected: (Items result){},
        itemBuilder: (BuildContext context) => <PopupMenuEntry<Items>>[
          const PopupMenuItem(child: Text("item01")),
          const PopupMenuItem(child: Text("item02")),
          const PopupMenuItem(child: Text("item03")),
          const PopupMenuItem(child: Text("item04")),
        ]
    );
  }

}



