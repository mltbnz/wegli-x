import 'package:flutter/cupertino.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class Report extends ChangeNotifier {
  Address address;
  DateTime date;
  List<Asset> _images = [];
  //var district: District?
  //var car = Car()
  //var charge = Charge()

  List<Asset> get images {
    return [..._images];
  }

  storeImage(List<Asset> pickedImages) {
    _images = pickedImages;
    notifyListeners();
  }
}

class Address {
  String street, city;
  int zipCode;
}
