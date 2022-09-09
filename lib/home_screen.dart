import 'package:flutter/material.dart';
import 'package:flutter_news_app/widgets/bottom_nav_bat.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/widgets/custom_tag.dart';
import 'package:flutter_news_app/widgets/image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ImageContainer(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              imageUrl: article.imageUrl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTag(
                      backgroundColor: Colors.grey.withAlpha(150),
                      children: [
                        Text(
                          'News of the Day',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        )
                      ]),
                  const SizedBox(height: 10),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                        color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Row(
                        children: [
                          Text(
                            'Learn more',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          )
                        ],
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
