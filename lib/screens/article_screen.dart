import 'package:flutter/material.dart';
import 'package:news/widgets/image_container.dart';
import '../widgets/custom_tag.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);
  static const routeName = "/article";
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Map;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article["urlToImage"] ??
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/660px-No-Image-Placeholder.svg.png?20200912122019",
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _NewsHeadline(
              article: article,
            ),
            _NewBody(article: article)
          ],
        ),
      ),
    );
  }
}

class _NewBody extends StatelessWidget {
  const _NewBody({
    super.key,
    required this.article,
  });

  final Map article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(isLight: false, children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                    article["urlToImage"] ??
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/660px-No-Image-Placeholder.svg.png?20200912122019",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  article["author"],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                )
              ]),
              const SizedBox(
                width: 10,
              ),
              CustomTag(children: [
                const Icon(
                  Icons.timer,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${DateTime.now().difference(DateTime.parse(article["publishedAt"]) ?? DateTime.now()).inHours} hours',
                  style: Theme.of(context).textTheme.bodyMedium!,
                )
              ]),
              // CustomTag(children: [
              //   const Icon(
              //     Icons.remove_red_eye,
              //     color: Colors.grey,
              //   ),
              //   const SizedBox(
              //     width: 10,
              //   ),
              //   Text(
              //     '${article.views}',
              //     style: Theme.of(context).textTheme.bodyMedium!,
              //   )
              // ]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article["title"] ?? "Title",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article["content"] ?? "Content",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  height: 1.5,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.25,
            ),
            itemBuilder: (context, index) {
              return ImageContainer(
                width: MediaQuery.of(context).size.width * 0.42,
                imageUrl: article["urlToImage"] ??
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/660px-No-Image-Placeholder.svg.png?20200912122019",
                margin: const EdgeInsets.only(right: 5, bottom: 5),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({super.key, required this.article});

  final Map article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          // CustomTag(
          //   children: [
          //     Text(
          //       article[category],
          //       style: Theme.of(context)
          //           .textTheme
          //           .bodyMedium!
          //           .copyWith(color: Colors.white),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article["title"] ?? "Title",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article["description"] ?? "Body",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
