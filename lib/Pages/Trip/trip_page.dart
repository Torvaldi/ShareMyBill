import 'package:flutter/material.dart';
import 'package:share_my_bill/Pages/Trip/Buyings/buying_page.dart';
import 'package:share_my_bill/Pages/Trip/Participants/participants_page.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Voyage à Paris'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Informations',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'Participants',
                icon: Icon(Icons.group),
              ),
              Tab(
                text: 'Achats',
                icon: Icon(Icons.account_balance_wallet),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Informations générales')),
            ParticipantsPage(),
            Buyingpage(),
          ],
        ),
      ),
    );
  }
}
