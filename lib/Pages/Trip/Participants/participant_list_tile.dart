import 'package:flutter/material.dart';
import 'package:share_my_bill/Model/user.dart';

class ParticipantListTile extends StatelessWidget {
  final User user;

  const ParticipantListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          user.firstName[0].toUpperCase() + user.lastName[0].toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: user.isAdmin ? const Text('Administrateur') : null,
      trailing: PopupMenuButton(
        itemBuilder: (ctx) => [
          _buildPopupMenuButton(
            title: user.isAdmin
                ? 'Retirer des administrateurs'
                : 'Rendre administrateur',
            icon: user.isAdmin ? Icons.remove_moderator : Icons.add_moderator,
            isWarning: true,
          ),
          _buildPopupMenuButton(
            title: 'Retirer du voyage',
            icon: Icons.person_remove,
            isDisabled: user.isAdmin,
          ),
        ],
      ),
    );
  }

  PopupMenuItem _buildPopupMenuButton(
      {required String title,
      required IconData icon,
      bool? isDisabled,
      bool? isWarning}) {
    isWarning ??= false;
    isDisabled ??= false;

    return PopupMenuItem(
      enabled: !isDisabled,
      child: Row(
        children: [
          Icon(icon, color: isWarning ? Colors.red : null),
          const Padding(padding: EdgeInsets.only(right: 8.0)),
          Text(title, style: TextStyle(color: isWarning ? Colors.red : null)),
        ],
      ),
    );
  }
}
