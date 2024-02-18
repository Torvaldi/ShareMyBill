import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String title;
  final String description;
  final double price;

  const GroupCard(
      {Key? key,
      required this.title,
      required this.price,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 6.0)),
            Text(description, style: const TextStyle(fontSize: 14)),
            const Padding(padding: EdgeInsets.only(bottom: 6.0)),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${price.toStringAsFixed(2)}€'),
                Text(
                  '${price.toStringAsFixed(2)}€',
                  style: const TextStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
