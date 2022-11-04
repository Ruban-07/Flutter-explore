import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AvatarAppBar extends StatefulWidget {
  AvatarAppBar({super.key});

  @override
  State<AvatarAppBar> createState() => _AvatarAppBarState();
}

class _AvatarAppBarState extends State<AvatarAppBar> {
  String avatarImage =
      'https://cdn5.vectorstock.com/i/1000x1000/07/39/man-avatar-profile-view-vector-22890739.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Avatar App Bar'),
            // Container(
            //   height: 40,
            //   width: 40,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Image.network(avatarImage),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
