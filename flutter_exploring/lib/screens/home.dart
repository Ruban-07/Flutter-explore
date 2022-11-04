import 'package:flutter/material.dart';
import 'package:flutter_exploring/widgets/appBar/appBar.dart';
import 'package:flutter_exploring/widgets/buttons.dart';
import 'package:flutter_exploring/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBarWidget()),
                  );
                },
                child: Text('AppBars'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NeumorphismButton()));
                },
                child: Text('Buttons'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextWidgets()));
                },
                child: Text('Text'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ruban'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
