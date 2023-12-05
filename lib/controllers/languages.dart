import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'Hello my name is Asim majeed',
          'message1': 'How are you?',
        },
        'ur_PK': {
          'message': 'ہیلو میرا نام عاصم مجید ہے۔',
          'message1': 'آپ کیسے ہو؟',
        }
      };
}
