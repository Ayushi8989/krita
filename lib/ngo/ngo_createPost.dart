import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:krita/backend/ngo/geolocator.dart';
import 'package:krita/constants.dart';
import 'package:krita/ngo/reusableWidgets/capsuleCard.dart';


class ngo_createPost extends StatefulWidget {
  const ngo_createPost({Key? key}) : super(key: key);

  @override
  State<ngo_createPost> createState() => _ngo_createPostState();
}

class _ngo_createPostState extends State<ngo_createPost> {
  // int type = 0;
  bool added = false;
  double _currentSliderValue = 20;
  List<int> type = [1, 1, 1, 1, 1];
  double currentSliderValue = 20;


  Future<void> GetAddressFromLatLong(Position position) async{
    List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");
    print(locations);

    List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemark);

    Placemark place = placemark[0];
    Address = '${place.thoroughfare}/${place.street} ${place.subLocality}, ${place.locality}, ${place.subLocality}, ${place.administrativeArea} ${place.postalCode}';
    setState(() {
      //Address = locations.last.latitude.toString() + "  " + locations.last.longitude.toString();
    });
  }

  String location = 'Null, Press Button';
  String Address = ' ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg_color,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
          color: main_theme,
          iconSize: 30,
        ),
        title: Text(
          'Create Post',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meal Type',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.0,),
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 18.0,
                    runSpacing: 16.0,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            type[0] *= -1;
                            });
                          },
                        child: capsule_Card(
                          meal_type: 'Breakfast',
                          isClicked: type[0]==-1 ? true : false,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            type[1] *= -1;
                          });
                        },
                        child: capsule_Card(
                          meal_type: 'Lunch',
                          isClicked: type[1]==-1 ? true : false,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            type[2] *= -1;
                          });
                        },
                        child: capsule_Card(
                          meal_type: 'Dinner',
                          isClicked: type[2]==-1 ? true : false,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            type[3] *= -1;
                          });
                        },
                        child: capsule_Card(
                          meal_type: 'Veg',
                          isClicked: type[3]==-1 ? true : false,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            type[4] *= -1;
                          });
                        },
                        child: capsule_Card(
                          meal_type: 'Non-veg',
                          isClicked: type[4]==-1 ? true : false,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            added = !added;
                          });
                        },
                        child: Container(
                          height: 32,
                          // width: 70,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: added ? Color.fromARGB(225, 42, 131, 236) : Color.fromARGB(225, 228, 240, 253),                          borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Add',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: added ? Color.fromARGB(225, 228, 240, 253) : Color.fromARGB(225, 42, 131, 236),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Image',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.0,),
                  TextButton(
                    onPressed: () {},
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      child: Container(
                        height: 80,
                        width: 80,
                        // decoration: BoxDecoration(
                        //   border:
                        // )
                        child: Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meal Quantity',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 26.0,),
                  Slider(
                    value: _currentSliderValue,
                    max: 500,
                    divisions: 500,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextButton.icon(
                        onPressed: () async{
                          Position position = await determinePosition();
                          print(position.latitude);

                          location = 'Lat: ${position.latitude}, Log: ${position.longitude}';
                          GetAddressFromLatLong(position);
                        },
                        icon: Icon(
                          Bootstrap.geo_alt_fill,
                          color: Color.fromARGB(225, 42, 131, 236),
                          size: 20,
                        ),
                        label: Text(
                            'ADD LOCATION',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(225, 42, 131, 236),
                            ),
                          ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                    decoration: BoxDecoration(
                        color: Address != ' ' ? Color.fromARGB(
                            255, 236, 236, 236) : Colors.transparent,
                        border: Border.all(
                          width: 1.0,
                          color: Address != ' ' ? Colors.grey : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      '${Address}',
                      style: TextStyle(
                        color: Address != ' ' ? Colors.black54 : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meal Expiry Time',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 26.0,),
                  Slider(
                    value: currentSliderValue,
                    max: 120,
                    divisions: 120,
                    label: currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                // height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 230, 228, 228),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  cursorColor: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.5,
                child: FloatingActionButton.extended(
                  onPressed: () {

                  },
                  label: const Text(
                    'Post',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  backgroundColor: main_theme,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
