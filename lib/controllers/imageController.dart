import 'package:get/get.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class ImageControlller extends GetxController {
  static ImageControlller get i => Get.find();

  //variables
  var imagePath = ''.obs;
  var isAvailbale = true.obs;

  var images = <Asset>[].obs;

  //getxcontroller intance

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

//reset image filed
  void resetImageValue() {
    imagePath.value = '';
  }

// using this method to get image from  phone or camera
  Future imageService() async {
    try {
      images.value = await MultiImagePicker.pickImages(
        maxImages: 10,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          actionBarTitle: "PracticalTest",
        ),
      );
      update();
    } catch (e) {
      print("Exception - ImageControlller.dart - imageService()" + e.toString());
    }
    return null;
  }
}
