import 'package:flutter/material.dart';

class ParticipantListTile extends StatelessWidget {
  final String firstName;
  final String lastName;

  const ParticipantListTile(
      {super.key, required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child:
                  Text(firstName[0].toUpperCase() + lastName[0].toUpperCase()),
            ),
          ),
          const SizedBox(width: 10),
          Text('$firstName $lastName'),
        ],
      ),
    );
  }
}
