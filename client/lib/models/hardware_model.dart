class Hardware {
  var id;
  var brand;
  var model;
  var serialNumber;
  var name;
  var date;

  Hardware(
      {this.id,
      this.brand,
      this.model,
      this.serialNumber,
      this.name,
      this.date});

  factory Hardware.fromJson(json) {
    print("Decoding...");
    print(json["id"]);
    print(json["brand"]);
    print(json["model"]);
    print(json["serialNumber"]);
    print(json["name"]);
    print(json["date"]);
    print(Hardware(
      id: int.parse(json["id"]),
      brand: json["brand"],
      model: json["model"],
      serialNumber: json["serialNumber"],
      name: json["name"],
      date: json["date"],
    ));

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
