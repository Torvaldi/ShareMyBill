import 'package:flutter/material.dart';
import 'package:share_my_bill/Model/user.dart';
import 'package:share_my_bill/Pages/Trip/Participants/participant_list_tile.dart';

class ParticipantsPage extends StatefulWidget {
  const ParticipantsPage({super.key});

  @override
  State<ParticipantsPage> createState() => _ParticipantsPageState();
}

class _ParticipantsPageState extends State<ParticipantsPage> {
  List<User> participants = [
    User(firstName: 'John', lastName: 'Doe'),
    User(firstName: 'Jane', lastName: 'Doe'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: participants.length,
      itemBuilder: (context, index) {
        final participant = participants[index];
        return ParticipantListTile(
          firstName: participant.firstName,
          lastName: participant.lastName,
        );
      },
    );
  }
}
