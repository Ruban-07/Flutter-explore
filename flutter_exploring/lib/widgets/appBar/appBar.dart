import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_exploring/widgets/appBar/AppbarCentered.dart';

import 'appBarWithAvatar.dart';
import 'defaultAppBar.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBarDefault()),
                  );
                },
                child: Text('AppBar Default')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBarCentered()),
                  );
                },
                child: Text('AppBar Centered')),
            ElevatedButton(
                onPressed: () {}, child: Text('AppBar with Leading icon')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarAppBar()));
                },
                child: Text('AppBar with Avatar')),
            ElevatedButton(
                onPressed: () {}, child: Text('AppBar action icon and search')),
            ElevatedButton(
                onPressed: () {}, child: Text('Custom Sliver AppBar')),
            ElevatedButton(onPressed: () {}, child: Text('AppBar Default')),
            ElevatedButton(onPressed: () {}, child: Text('AppBar Default')),
            ElevatedButton(onPressed: () {}, child: Text('AppBar Default')),
            ElevatedButton(onPressed: () {}, child: Text('AppBar Default')),
            ElevatedButton(onPressed: () {}, child: Text('AppBar Default')),
          ],
        ),
      ),
    );
  }
}
