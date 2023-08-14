import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/screens.dart';
import 'package:news/widgets/image_container.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/side_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = "/discover";
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Health', 'Politics', 'Art', 'Food', 'Science'];
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        drawer: const SideNavbar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          children: [
            const _DiscoverNews(),
            _CategoryNews(tabs: tabs),
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);
  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs
              .map(
                (tab) => Tab(
                  icon: Text(
                    tab,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: TabBarView(
              children: tabs
                  .map((e) => FutureBuilder(
                      future: getData(e),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: false,
                            scrollDirection: Axis.vertical,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ArticleScreen.routeName,
                                      arguments: snapshot.data?[index]);
                                },
                                child: Row(
                                  children: [
                                    ImageContainer(
                                      width: 80,
                                      height: 80,
                                      margin: const EdgeInsets.all(10),
                                      borderRadius: 5,
                                      imageUrl: snapshot.data?[index]
                                              ?["urlToImage"] ??
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/660px-No-Image-Placeholder.svg.png?20200912122019",
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            snapshot.data?[index]?["title"] ??
                                                "Title",
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.schedule,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${DateTime.now().difference(DateTime.parse(snapshot.data?[index]?["publishedAt"])).inHours} hours ago',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text(
                            snapshot.error.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ));
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      }))
                  .toList()),
        ),
      ],
    );
  }

  Future<List> getData(String type) async {
    var url =
        'https://newsapi.org/v2/top-headlines?q=$type&in&apiKey=ee4a702063ae41aca93a1db458b481ab';
    var response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data["articles"];
    } else {
      throw Exception('Error fetching data');
    }
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "News from all over the world",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
