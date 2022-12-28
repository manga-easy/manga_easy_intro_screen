import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class PageBody extends StatelessWidget {
  final String titlePage;
  final List<String> paragraphPage;
  const PageBody({
    super.key,
    required this.titlePage,
    required this.paragraphPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: ThemeService.of.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.only(right: 16, left: 10, top: 16, bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  titlePage,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: ThemeService.of.backgroundText,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: ThemeService.of.backgroundText,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 18, 5, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: paragraphPage
                  .map(
                    (f) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: ThemeService.of.backgroundText,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            f,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: ThemeService.of.backgroundText,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
