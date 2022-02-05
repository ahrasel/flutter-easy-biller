import 'package:get/get.dart';

import '../../translation/en.dart';
import '../../translation/bn.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'bn': bn};
}
