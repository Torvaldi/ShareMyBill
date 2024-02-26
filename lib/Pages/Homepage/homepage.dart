import 'package:flutter/material.dart';
import 'package:share_my_bill/Model/trip.dart';
import 'package:share_my_bill/Pages/Homepage/trip_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Trip> trips = [
    Trip(
        title: 'Voyage à Paris',
        description: "Road-trip entre potes",
        price: 250)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0xFF004581), Color(0xFF018ABD)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 40, left: 10, right: 10),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bonjour",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text("Quentin",
                          style: TextStyle(fontSize: 48, color: Colors.white))
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: trips.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/trip'),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 14, bottom: 85),
                      child: TripCard(
                        title: trips[index].title,
                        description: trips[index].description,
                        price: trips[index].price,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        backgroundColor: Color(0xFF004581),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
