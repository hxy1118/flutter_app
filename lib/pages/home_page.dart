import 'package:flutter/material.dart';
import 'drawer.dart';
class HomePage extends StatefulWidget{
  @override
  _statehomepage createState() {
    // TODO: implement createState
    return _statehomepage();
  }

}

class _statehomepage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
        actions: <Widget>[
          new PopupMenuButton<Items>(
              onSelected: (Items result){},
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Items>>[
                const PopupMenuItem(child: Text("item01")),
                const PopupMenuItem(child: Text("item02")),
                const PopupMenuItem(child: Text("item03")),
                const PopupMenuItem(child: Text("item04")),
              ]
          ),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Hxy"),
                accountEmail: Text("123456@.com"),
              currentAccountPicture: new GestureDetector(
                onTap: (){},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage('http://img4.imgtn.bdimg.com/it/u=4238597523,4271442857&fm=26&gp=0.jpg'),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: (){},
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage('http://www.agri35.com/UploadFiles/img_0_133288954_2247036620_27.jpg'),
                  ),
                )
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.fill,
                  image: new ExactAssetImage("images/okawari.jpg"),
                )
              ),
            ),
            new ListTile(
              title: new Text('Item01'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){},
            ),
            new ListTile(
              title: new Text('Item02'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){},
            ),
            new ListTile(
              title: new Text('Item03'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){},
            ),
            new ListTile(
              title: new Text('Item04'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){},
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        )
      ),
      body: Center(
        child: Text("侧边栏"),
      ),
    );
  }
}