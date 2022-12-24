import 'package:flutter/material.dart';
import 'package:intro_screen/src/domain/assets_enum.dart';

class PageTitle extends StatelessWidget {
  final String logoPage;
  const PageTitle({super.key, required this.logoPage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.network(
          logoPage,
          height: size.height * 0.20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image.network(
                IntroduceAssets.logoMangaEasy.link,
                height: size.height * 0.09,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 12),
              child: Image.network(
                IntroduceAssets.tresPontinhoBarrinha.link,
                height: size.height * 0.045,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
