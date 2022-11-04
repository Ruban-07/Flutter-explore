import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:like_button/like_button.dart';
import 'package:slide_to_act/slide_to_act.dart';

class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({super.key});

  @override
  State<NeumorphismButton> createState() => _NeumorButtonState();
}

class _NeumorButtonState extends State<NeumorphismButton> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFE7ECEF);
    Offset distance = isPressed ? Offset(10, 10) : Offset(28, 28);
    double blur = isPressed ? 5.0 : 30.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text('Ruban')),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ruban'),
                ),
                OutlinedButton(onPressed: () {}, child: Text('Ruban')),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: Text('ruban'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 100,
                    ),
                    height: 100,
                    width: 140,
                    child: Center(
                        child: Text(
                      'Ruban',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: blur,
                            offset: -distance,
                            color: Colors.white,
                            inset: isPressed,
                          ),
                          BoxShadow(
                            blurRadius: blur,
                            offset: distance,
                            color: Color(0xFFA7A9AF),
                            inset: isPressed,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: SlideAction(
                text: 'Swipe to Unlock',
                borderRadius: 50,
                innerColor: Colors.white,
                outerColor: Colors.orange,
                sliderButtonIcon: Icon(Icons.lock_open),
                sliderRotate: false,
                onSubmit: () {},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(
                  likeBuilder: (isLiked) {
                    return Icon(Icons.favorite);
                  },
                  size: 80,
                  likeCount: 0,
                  countPostion: CountPostion.bottom,
                  animationDuration: Duration(
                    milliseconds: 2000,
                  ),
                ),
                LikeButton(
                  likeBuilder: (isLiked) {
                    return Icon(Icons.heart_broken);
                  },
                  size: 80,
                  likeCount: 0,
                  countPostion: CountPostion.bottom,
                  animationDuration: Duration(
                    milliseconds: 2000,
                  ),
                ),
                LikeButton(
                  likeBuilder: (isLiked) {
                    return Icon(Icons.bedroom_baby);
                  },
                  size: 80,
                  likeCount: 0,
                  countPostion: CountPostion.bottom,
                  animationDuration: Duration(
                    milliseconds: 2000,
                  ),
                ),
              ],
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
