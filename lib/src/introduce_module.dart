import 'package:get_it/get_it.dart';
import 'package:manga_easy_intro_screen/src/presenter/controllers/introduce_controller.dart';

final di = GetIt.instance;

class IntroduceModule {
  static void start() {
    //controllers
    di.registerFactory(() => IntroduceController());
  }
}
