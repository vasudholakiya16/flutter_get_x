import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Example5Controller extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    print('Image Path: ${image!.path}');
    if (image != null) {
      imagePath.value = image.path.toString();
    } else {
      print('No image selected.');
    }
  }
}
