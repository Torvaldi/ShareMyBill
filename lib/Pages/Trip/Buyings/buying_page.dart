import 'package:flutter/material.dart';
import 'package:share_my_bill/Model/buying.dart';
import 'package:share_my_bill/Pages/Trip/Buyings/buying_list_tile.dart';

class Buyingpage extends StatefulWidget {
  const Buyingpage({super.key});

  @override
  State<Buyingpage> createState() => _BuyingpageState();
}

class _BuyingpageState extends State<Buyingpage> {
  List<Buying> buyings = [
    Buying(title: "Courses de la semaine", price: 50),
    Buying(title: "Péage", price: 10),
    Buying(title: "Gazoil", price: 60)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: buyings.length,
        itemBuilder: (context, index) {
          final buying = buyings[index];
          return BuyingListTile(buying: buying);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        child: const Icon(Icons.add),
      ),
    );
  }
}
