import 'package:get_it/get_it.dart';
import 'package:intro_screen/src/presenter/controllers/introduce_controller.dart';

class IntroduceModule {
  static void start() {
    //controllers
    GetIt.instance.registerFactory(() => IntroduceController());
  }
}
