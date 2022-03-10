import 'package:client/widgets/neumorphic_button.dart';
import 'package:flutter/material.dart';

class BottomNeumorphismAppBar extends StatefulWidget {
  const BottomNeumorphismAppBar({Key? key}) : super(key: key);

  @override
  State<BottomNeumorphismAppBar> createState() =>
      _BottomNeumorphismAppBarState();
}

class _BottomNeumorphismAppBarState extends State<BottomNeumorphismAppBar> {
  double containerHeight = 100;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          containerHeight = 200;
          print(value);
        });
      },
      child: Container(
          height: containerHeight,
          color: Colors.grey[300],
          // mainAxisAlignment: MainAxisAlignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: NeumorphicButton(),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: NeumorphicButton(),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: NeumorphicButton(),
              ),
            ],
          )),
    );
  }
}
