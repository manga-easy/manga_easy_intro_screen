import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:manga_easy_intro_screen/src/introduce_module.dart';
import 'package:manga_easy_intro_screen/src/presenter/controllers/introduce_controller.dart';
import 'package:manga_easy_intro_screen/src/presenter/ui/components/constant.dart';
import 'package:manga_easy_intro_screen/src/presenter/ui/organisms/page_body.dart';
import 'package:manga_easy_intro_screen/src/presenter/ui/organisms/page_title.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({super.key});

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final IntroduceController ct = di();
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: ct.introduces
          .map(
            (e) => IntroductionSliderItem(
              logo: PageTitle(logoPage: e.logo),
              title: PageBody(
                titlePage: e.title,
                paragraphPage: e.paragrafos,
              ),
              backgroundImageDecoration: const BackgroundImageDecoration(
                image: AssetImage(
                  "imagens/background.png",
                ),
              ),
            ),
          )
          .toList(),
      done: const Done(
        child: Icon(
          Icons.done,
          color: kPrimaryColor,
        ),
        home: Text('done'),
      ),
      next: const Next(
        child: Icon(Icons.arrow_forward, color: kPrimaryColor),
      ),
      back: const Back(
        child: Icon(Icons.arrow_back, color: kPrimaryColor),
      ),
      dotIndicator: const DotIndicator(
        selectedColor: kPrimaryColor,
      ),
    );
  }
}
