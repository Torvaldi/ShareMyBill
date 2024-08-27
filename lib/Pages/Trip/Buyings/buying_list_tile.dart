import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_my_bill/Model/buying.dart';

class BuyingListTile extends StatelessWidget {
  final Buying buying;

  const BuyingListTile({super.key, required this.buying});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(NumberFormat.currency(locale: 'fr_FR', symbol: '€')
            .format(buying.price)),
        subtitle: Text(buying.title),
        leading: const Icon(Icons.account_balance_wallet),
        trailing: const Icon(Icons.arrow_right_sharp),
        onTap: () => null,
      ),
    );
  }
}
