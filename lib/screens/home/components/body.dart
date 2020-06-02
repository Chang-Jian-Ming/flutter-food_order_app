import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:food_order_app/constants.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GoogleMapController mapController;

  LatLng _center = LatLng(outlets[0]['lat'], outlets[0]['lng']);

  Set<Marker> locations = {
    Marker(
      markerId: MarkerId(outlets[0]['outletId'].toString()),
      position: LatLng(outlets[0]['lat'], outlets[0]['lng']),
      infoWindow: InfoWindow(
        title: outlets[0]['name'],
        snippet: outlets[0]['address'],
      ),
      onTap: () {
        print(outlets[0]['name']);
      },
    )
  };

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget _googleMaps() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 15.0,
      ),
      markers: locations,
    );
  }

  Widget _cardsList(double deviceWidth, List<Map> data, GoogleMapController controller) {
    double cardWidth = deviceWidth * 0.9;
    return Container(
      child: NotificationListener (
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            int itemCount = (notification.metrics.pixels / cardWidth).round();
            print(data[itemCount]["name"]);
            setState(() {
              locations = {
                Marker(
                  markerId: MarkerId(outlets[itemCount]['outletId'].toString()),
                  position: LatLng(outlets[itemCount]['lat'], outlets[itemCount]['lng']),
                  infoWindow: InfoWindow(
                    title: outlets[itemCount]['name'],
                    snippet: outlets[itemCount]['address'],
                  ),
                )
              };
            });   
            mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
                target: LatLng(data[itemCount]['lat'], data[itemCount]['lng']),
                zoom: 15.0,
              )
            ));
          }
          return true;
        },
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Container(
                width: cardWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(data[index]["image"]), 
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/koufu_logo.png"),
                    backgroundColor: Colors.white,
                  ),
                  title: Text.rich(
                    TextSpan(
                      text: data[index]["name"],
                      style: Theme.of(context).textTheme.headline5
                    ),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: data[index]["address"],
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/stalls", arguments: {"outletId": data[index]["outletId"], "name": data[index]["name"]});
              },
            );
          }
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          height: height, 
          width: width,
          child: _googleMaps(),
        ),
        Positioned(
          height: height * 0.25,
          width: width,
          bottom: 0,
          left: 0,
          child: _cardsList(width, outlets, mapController)
        ),
      ],
    );
  }
}