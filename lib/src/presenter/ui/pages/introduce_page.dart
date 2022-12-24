import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intro_screen/src/domain/assets_enum.dart';
import 'package:introduction_slider/introduction_slider.dart';
import 'package:intro_screen/src/presenter/controllers/introduce_controller.dart';
import 'package:intro_screen/src/presenter/ui/components/constant.dart';
import 'package:intro_screen/src/presenter/ui/organisms/page_body.dart';
import 'package:intro_screen/src/presenter/ui/organisms/page_title.dart';

class IntroducePage extends StatefulWidget {
  static const route = '/introduce';
  const IntroducePage({super.key});

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final IntroduceController ct = GetIt.instance();
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: ct.introduces
          .map(
            (e) => IntroductionSliderItem(
              logo: PageTitle(logoPage: e.logo.link),
              title: PageBody(
                titlePage: e.title,
                paragraphPage: e.paragrafos,
              ),
              backgroundImageDecoration: BackgroundImageDecoration(
                image: NetworkImage(
                  IntroduceAssets.backgroud.link,
                ),
              ),
            ),
          )
          .toList(),
      skip: IconButton(
        onPressed: () => null,
        icon: Icon(Icons.close),
      ),
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
