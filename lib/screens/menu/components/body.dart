import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';

class Body extends StatefulWidget {
  final Map data;

  Body(this.data);

  @override
  _BodyState createState() => _BodyState(data);
}

class _BodyState extends State<Body> {
  Map data;

  _BodyState(var data) {
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          leading: Container(),
          centerTitle: true,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), 
              bottomRight: Radius.circular(20)
            )
          ),
          expandedHeight: height * 0.4,
          flexibleSpace:  FlexibleSpaceBar(
            title: Text(data['stallName'].toString()),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(menu[index]['image']),
                  backgroundColor: Colors.white,
                ),
                title: Text(menu[index]['name']),
                subtitle: Text('\$' + menu[index]['price'].toString()),
                trailing: IconButton(
                  icon: Icon(Icons.add), 
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text("${menu[index]['name']} added"),
                      backgroundColor: Theme.of(context).accentColor,
                      duration: Duration(seconds: 1),
                      action: SnackBarAction(
                        textColor: Colors.white,
                        label: 'Undo',
                        onPressed: () {
                          print("Removed Item");
                        },
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                ),
              );
          },
          childCount: menu.length,
          )
        ),
      ],
    );
  }
}