import 'package:client/models/hardware_model.dart';

class Hardwares {
  final List<Hardware> hardwareList = [];

  void add(Hardware item) {
    hardwareList.add(item);
  }

  void clear() {
    hardwareList.clear();
  }

  int length() {
    return hardwareList.length;
  }
}
