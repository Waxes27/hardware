import 'package:client/models/hardwares_model.dart';
import 'package:flutter/material.dart';

class ItemDropDown extends StatefulWidget {
  final String brand;
  final String name;
  final String model;
  final int number;

  const ItemDropDown(
      {Key? key,
      required this.brand,
      required this.number,
      required this.name,
      required this.model})
      : super(key: key);

  @override
  State<ItemDropDown> createState() => _ItemDropDownState();
}

class _ItemDropDownState extends State<ItemDropDown> {
  bool fadeState = false;

  // get number => null;

  // String get brand => "No Brand Here";
  // String get model => "No Model Here";
  // String get name => "No Name Here";

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
              shadowColor: Colors.grey[400],
              child: ListTile(
                  onTap: () {
                    setState(() {
                      fadeState = !fadeState;
                    });
                    // print(snapshot.data!.hardwareList[number].getBrand());
                  },
                  leading: const Icon(Icons.arrow_drop_down),
                  title: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ListTile(
                              leading: Text("Brand: "),
                              title: Center(child: Text(widget.brand))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ListTile(
                              leading: Text("Name: "),
                              title: Center(child: Text(widget.name))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ListTile(
                              leading: Text("Model: "),
                              title: Center(
                                  child: Text(
                                widget.model,
                              ))),
                        ),
                      ],
                    ),
                  )))), // When you don't want to show menu..
      secondChild: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
              shadowColor: Colors.grey[400],
              child: ListTile(
                onTap: () {
                  setState(() {
                    fadeState = !fadeState;
                  });
                },
                leading: const Icon(Icons.arrow_drop_down),
                title: Center(child: Text(widget.name)),
              ))),
      crossFadeState:
          fadeState ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
