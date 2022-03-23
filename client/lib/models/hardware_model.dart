class Hardware {
  String id;
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
    return Hardware(
      id: json["id"],
      brand: json["brand"],
      model: json["model"],
      serialNumber: json["serialNumber"],
      name: json["name"],
      date: json["date"],
    );
  }

  String getId() => id;
  String getBrand() => brand;
  String getModel() => model;
  String getSerialNumber() => serialNumber;
  String getName() => name;
  String getDate() => date;
  
}
