import 'package:client/api/get_api_calls.dart';
import 'package:client/models/hardwares_model.dart';
import 'package:flutter/material.dart';

class HardwareView extends StatefulWidget {
  const HardwareView({Key? key}) : super(key: key);

  @override
  State<HardwareView> createState() => _HardwareViewState();
}

class _HardwareViewState extends State<HardwareView> {
  Widget buildList(
      BuildContext context, AsyncSnapshot<Hardwares> snapshot, int listLength) {
    if (listLength == 0) {
      return const Center(
        child: Text(
          "---Storage is empty---",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            letterSpacing: 5,
          ),
        ),
      );
    }
    return ListView.builder(
        itemCount: listLength,
        itemBuilder: (context, number) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.arrow_drop_down),
              title: Text(snapshot.data!.hardwareList[number].toString()),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getAllHardware(),
        builder: (context, AsyncSnapshot<Hardwares> snapshot) {
          // print(snapshot.data);
          if (snapshot.hasData) {
            print(snapshot.data!.hardwareList);
            return buildList(context, snapshot, snapshot.data!.length());
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        });
  }
}
