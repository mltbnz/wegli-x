import 'package:flutter/cupertino.dart';

class Report extends ChangeNotifier {
  List images;
  Address address;
  DateTime date;
  //var district: District?
  //var car = Car()
  //var charge = Charge()
}

class Address {
  String street, city;
  int zipCode;
}