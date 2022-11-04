import 'package:flutter/material.dart';

// BigText
class BigText extends StatelessWidget {
  Color? color;
  FontWeight? fontWeight;
  final String text;
  double? size = 30;
  TextOverflow overFlow;
  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.size,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Roboto',
        fontWeight: fontWeight,
      ),
    );
  }
}

// Small text
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  SmallText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toLowerCase(),
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
    );
  }
}

class TextWidgets extends StatefulWidget {
  const TextWidgets({super.key});

  @override
  State<TextWidgets> createState() => _TextWidgetsState();
}

class _TextWidgetsState extends State<TextWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: 'Big_Text',
                  color: Colors.red,
                ),
                SmallText(text: 'Small_Text')
              ],
            ),
          )
        ],
      ),
    );
  }
}
