import 'package:flutter/material.dart';

class NeumorphicButton extends StatefulWidget {
  // final String title;
  const NeumorphicButton({Key? key}) : super(key: key);

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton>{
  bool _isElevated = false;
  var isHover = false;

  // get title => title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // print("Val--->{}$val");
          setState(() {
            _isElevated = !_isElevated;
            // sleep(Duration(seconds: 2));
            print(_isElevated);
          });
        },
        onTapUp: (details) {
          setState(() {
            // _isElevated = !_isElevated;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),

          // curve: Curves.bounceInOut,
          padding: const EdgeInsets.all(30),
          // child: InkWell(
          child: const Text("Button"),
          // onTap: () {
          //   // print("Val--->{}$val");
          //   setState(() {
          //     _isElevated = !_isElevated;
          //     // sleep(Duration(seconds: 2));
          //     print(_isElevated);
          //   });
          // }),
          decoration: !_isElevated
              ? BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600]!,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 2),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 2)
                    ])
              : null,
        ));
  }
}
