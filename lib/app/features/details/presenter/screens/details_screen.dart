import 'package:appfest/app/features/home/utils/mock_event_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Theme.of(context).backgroundColor,
              // height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width,
                    height: 350,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            MockEventModel().items[1].imageUrl,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            width: size.width,
                            bottom: 0,
                            // height: 100,
                            child: Container(
                              // color: Colors.red
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: ListTile(
                                  title: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.0, bottom: 10),
                                    child: Text(
                                      'Tomorrowland',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.white,
                                          ),
                                          Text('25 - 26 july, 2021',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.timer,
                                              color: Colors.white),
                                          Text('4pm - 12pm',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: ListTile(
                      title: const Text('Description',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Uma festa é uma solenidade comemorativa destinada a pessoas ou fatos importantes, como por exemplo as Festas Juninas. Festa na praça principal em Cerqueira ',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18)),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Read more',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18),
                              )),
                          SizedBox(
                            height: size.height * 0.2,
                            width: size.width,
                            child: GoogleMap(
                              mapType: MapType.hybrid,
                              initialCameraPosition: _kGooglePlex,
                              onMapCreated: (GoogleMapController controller) {
                                _controller.complete(controller);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 38.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: size.width * 0.9,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Theme.of(context)
                                                      .primaryColor)),
                                      onPressed: () => {},
                                      child: const Text(
                                        'CONTATO',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 22),
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
