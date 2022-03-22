class Hardware {
  int id;
  String brand;
  String model;
  String serialNumber;
  String name;
  String date;

  Hardware(
      {required this.id,
      required this.brand,
      required this.model,
      required this.serialNumber,
      required this.name,
      required this.date});

  factory Hardware.fromJson(Map json) {
    // print("Decoding...");
    // print(json["id"]);
    // print(json["brand"]);
    // print(json["model"]);
    // print(json["serialNumber"]);
    // print(json["name"]);
    // print(json["date"]);
    // print(Hardware(
    //   id: int.parse(json["id"]),
    //   brand: json["brand"],
    //   model: json["model"],
    //   serialNumber: json["serialNumber"],
    //   name: json["name"],
    //   date: json["date"],
    // ));

    return Hardware(
      id: int.parse(json["id"]),
      brand: json["brand"],
      model: json["model"],
      serialNumber: json["serialNumber"],
      name: json["name"],
      date: json["date"],
    );
  }

  String getBrand() => brand;
}
