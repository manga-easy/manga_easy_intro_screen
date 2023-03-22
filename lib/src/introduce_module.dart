import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intro_screen/src/presenter/controllers/introduce_controller.dart';
import 'package:intro_screen/src/presenter/ui/pages/introduce_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class IntroduceModule extends MicroApp {
  @override
  Map<String, Widget> routers = {
    EasyRoutes.introduce.nameRoute: const IntroducePage()
  };

  @override
  void registerDependencies() {
    //controllers
    GetIt.instance.registerFactory(() => IntroduceController());
  }
}
