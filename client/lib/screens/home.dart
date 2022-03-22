import 'package:client/widgets/bottom_app.dart';
import 'package:flutter/material.dart';

import 'hardware.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: const HardwareView(),
      bottomNavigationBar: const BottomAppBar(
        child: BottomNeumorphismAppBar(),
      ),
    );
  }
}
