import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:manga_easy_exemplos/components/constant.dart';
import 'package:manga_easy_exemplos/modules/introdution/controllers/list_models.dart';
import 'package:manga_easy_exemplos/modules/introdution/ui/organisms/page_body.dart';
import 'package:manga_easy_exemplos/modules/introdution/ui/organisms/page_title.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({super.key});

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: introduces
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
        child: Icon(Icons.done, color: Color(0xffff2a2a)),
        home: Text('done'),
      ),
      next: const Next(
          child: Icon(Icons.arrow_forward, color: Color(0xffff2a2a))),
      back: const Back(child: Icon(Icons.arrow_back, color: Color(0xffff2a2a))),
      dotIndicator: const DotIndicator(selectedColor: Color(0xffff2a2a)),
    );
  }
}
