import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const GlobalAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(52.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: gray999,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none, color: gray000),
          onPressed: () {
            print('Notification icon tapped');
          },
        ),
        IconButton(
          icon: const Icon(Icons.account_circle, color: gray000),
          onPressed: () {
            print('Profile icon tapped');
          },
        ),
      ],
    );
  }
}
