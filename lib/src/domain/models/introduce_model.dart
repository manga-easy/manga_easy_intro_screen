import 'package:intro_screen/src/domain/assets_enum.dart';

class IntroduceModel {
  final String title;
  final IntroduceAssets logo;
  final List<String> paragrafos;

  IntroduceModel({
    required this.title,
    required this.logo,
    required this.paragrafos,
  });
}
