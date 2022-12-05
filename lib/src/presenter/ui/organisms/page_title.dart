import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String logoPage;
  const PageTitle({super.key, required this.logoPage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          logoPage,
          height: size.height * 0.20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image.asset(
                'imagens/logo_manga_easy.png',
                height: size.height * 0.09,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 12),
              child: Image.asset(
                'imagens/tres_pontinho_barrinha.png',
                height: size.height * 0.045,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
