import 'package:flutter/widgets.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class Pictures with ChangeNotifier {
  List<Asset> _items = [];

  List<Asset> get items {
    return [..._items];
  }

  storeImage(List<Asset> pickedImages) {
    _items = pickedImages;
    notifyListeners();
  }
}
