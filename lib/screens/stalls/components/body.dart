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
  List<Map> outletData;

  _BodyState(var data) {
    this.data = data;
    this.outletData = outlet1;
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
            title: Text(data['name'].toString()),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: height * 0.2,
                    width: width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(outletData[index]["image"]), 
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(outletData[index]['stallName']),
                    subtitle: Text(outletData[index]['description']),
                  ),
                  ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButton(
                        child: Text('VIEW MENU'),
                        onPressed: () {
                          print(outletData[index]['stallName']);
                          Navigator.pushNamed(context, "/menu", arguments: {"stallId": outletData[index]["stallId"], "stallName": outletData[index]["stallName"]});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          childCount: outletData.length,
          )
        ),
        
      ],
    );
  }

}