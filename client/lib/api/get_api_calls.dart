import 'dart:io';
import 'package:client/models/hardware_model.dart';
import 'package:client/models/hardwares_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String ip = "localhost";
String port = "8080";

Future<Hardwares> getAllHardware() async {
  Hardwares hardwares = Hardwares();
  hardwares.clear();

  String modifier = "api/v1/hardware";
  String uri = "http://$ip:$port/$modifier";

  http.Response response = await http.get(Uri.parse(uri), headers: {
    HttpHeaders.allowHeader:
        "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
    HttpHeaders.contentTypeHeader: "application/json",
  });


  for (Map item in await jsonDecode(response.body)) {
    hardwares.add(Hardware.fromJson({
      "id": item["id"],
      "brand": item["brand"],
      "date": item["date"],
      "model": item["model"],
      "name": item["name"],
      "serialNumber": item["serialNumber"]
    }));
  }

  return hardwares;
}
