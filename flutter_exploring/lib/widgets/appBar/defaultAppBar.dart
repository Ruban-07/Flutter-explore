import 'package:flutter/material.dart';
import 'package:flutter_exploring/widgets/text.dart';

class AppBarDefault extends StatefulWidget {
  const AppBarDefault({super.key});

  @override
  State<AppBarDefault> createState() => _AppBarDefaultState();
}

class _AppBarDefaultState extends State<AppBarDefault> {
  final String Title = 'AppBar Title';
  final Color backgroundColor = Colors.orange;
  final Icon icon = Icon(Icons.home);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        title: Text(Title),
        backgroundColor: backgroundColor,
        actions: [
          icon,
          Padding(
            padding: EdgeInsets.only(
              right: 30,
            ),
          )
        ],
        toolbarHeight: 80,
      ),
      body: Center(
        child: BigText(
          text: 'app bar default',
          size: 30,
        ),
      ),
    );
  }
}
