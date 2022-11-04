import 'package:flutter/material.dart';
import 'package:flutter_exploring/widgets/text.dart';

class AppBarCentered extends StatefulWidget {
  const AppBarCentered({super.key});

  @override
  State<AppBarCentered> createState() => _AppBarCenteredState();
}

class _AppBarCenteredState extends State<AppBarCentered> {
  final String Title = 'Centered AppBar';
  final String SubTitle = 'Sub title';
  final int fontSize = 20;
  final int SubfontSize = 12;
  final MaterialColor backgroundColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              SubTitle,
              style: TextStyle(
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: BigText(
          text: 'centered appbar \n with sub title',
          size: 30,
        ),
      ),
    );
  }
}
