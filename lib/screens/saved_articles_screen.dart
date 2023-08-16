import 'package:flutter/material.dart';

class SavedArticles extends StatefulWidget {
  const SavedArticles({super.key});
  static const routeName = "/saved-articles";
  @override
  State<SavedArticles> createState() => _SavedArticlesState();
}

class _SavedArticlesState extends State<SavedArticles> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Saved"));
    // return ListView.builder(
    //   padding: EdgeInsets.zero,
    //   shrinkWrap: false,
    //   scrollDirection: Axis.vertical,
    //   itemCount: snapshot.data?.length,
    //   itemBuilder: ((context, index) {
    //     return InkWell(
    //       onTap: () {
    //         Navigator.pushNamed(context, ArticleScreen.routeName,
    //             arguments: snapshot.data?[index]);
    //       },
    //       child: Row(
    //         children: [
    //           ImageContainer(
    //             width: 80,
    //             height: 80,
    //             margin: const EdgeInsets.all(10),
    //             borderRadius: 5,
    //             imageUrl: snapshot.data?[index]?["urlToImage"] ??
    //                 "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/660px-No-Image-Placeholder.svg.png?20200912122019",
    //           ),
    //           Expanded(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   snapshot.data?[index]?["title"] ?? "Title",
    //                   maxLines: 2,
    //                   overflow: TextOverflow.clip,
    //                   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                 ),
    //                 const SizedBox(
    //                   height: 10,
    //                 ),
    //                 Row(
    //                   children: [
    //                     const Icon(
    //                       Icons.schedule,
    //                       size: 18,
    //                     ),
    //                     const SizedBox(
    //                       width: 5,
    //                     ),
    //                     Text(
    //                       '${DateTime.now().difference(DateTime.parse(snapshot.data?[index]?["publishedAt"])).inHours} hours ago',
    //                       style: Theme.of(context).textTheme.bodySmall,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   }),
    // );
  }
}
