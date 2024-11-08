import 'package:shop_app/constants/enums/image_enum.dart';

extension ImageExtension on ImageEnum {
  String get _path => 'assets/images/';

  String get path => '$_path${toString().split('.').last}.png';
}
