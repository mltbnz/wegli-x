import 'dart:typed_data';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wegli/provider/pictures.dart';
import 'package:wegli/screens/widgets/stepContainer.dart';

class ImageStep extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PickImageState();
}

class PickImageState extends State<ImageStep> {
  List<Asset> images = List<Asset>();
  String _error = 'No Error Dectected';

  Future<Image> _convertToImage(Asset asset) async {
    final ByteData byteData = await asset.getByteData();
    final Image image = Image.memory(byteData.buffer.asUint8List());
    return image;
  }

  Widget buildGridView(List<Asset> assets) {
    var hasSelectedImages = assets.isNotEmpty;
    var assetSize = assets.length;
    return hasSelectedImages
        ? Expanded(
            child: SizedBox(
                height: hasSelectedImages ? 100 : 0,
                child: GridView.builder(
                  itemCount: assetSize,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (context, index) {
                    return FutureBuilder<Image>(
                      future: _convertToImage(assets[index]),
                      builder: (BuildContext context,
                          AsyncSnapshot<Image> snapshot) {
                        return snapshot.data;
                      },
                    );
                  },
                )),
          )
        : Text('NO NO NO');
  }

  Future<void> _getImage() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });

    _storeImage() {
      Provider.of<Pictures>(context, listen: false).storeImage(images);
    }

    _storeImage();
  }

  @override
  Widget build(BuildContext context) {
    final imagesData = Provider.of<Pictures>(context);
    final images = imagesData.items;
    return StepContainer(
        title: 'Fotos',
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      _getImage();
                    },
                    child: Row(
                      children: [
                        Icon(PlatformIcons(context).folderOpen),
                        SizedBox(width: 4),
                        Text('Pick a photo')
                      ],
                    )),
                OutlinedButton(
                    onPressed: () {
                      _getImage();
                    },
                    child: Row(
                      children: [
                        Icon(PlatformIcons(context).photoCamera),
                        SizedBox(width: 4),
                        Text('Take a photo')
                      ],
                    )),
              ],
            ),
            Container(
              child: SizedBox(height: 200, child: buildGridView(images)),
            )
          ],
        ));
  }
}
