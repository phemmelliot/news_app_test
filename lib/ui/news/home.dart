import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/data/news/model/news_model.dart';
import 'package:news_app/data/news/model/news_source.dart';

import 'package:news_app/ui/core/toast_helper/toast_helper.dart';
import 'package:news_app/ui/news/bloc/news_cubit.dart';
import 'package:news_app/utils/helper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Article> articles = [];
  List<NewsSource> newsSources = [];
  int selectedIndex = 0;

  Widget webViewPage(String url, String title) {
    return WebviewScaffold(
      url: url,
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Color(0xFFC70000),
      ),
      initialChild: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Waiting.....'),
        ),
      ),
    );
  }

  Widget _buildArticleWidget(BuildContext innerContext, Article article) {
    final formatter = DateFormat("yyyy-MM-dd");

    return InkWell(
      onTap: () {
        Get.to(webViewPage(article.url, article.title));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: article.urlToImage == null || article.urlToImage.isEmpty
                ? AssetImage("assets/img/breaking_news.jpg")
                : CachedNetworkImageProvider(article.urlToImage, scale: 1.0),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    child: Text(
                      article.source.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.red,
                    padding: EdgeInsets.all(5),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      article.isLiked ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      if (article.isLiked) {
                        innerContext.read<NewsCubit>().deleteArticleFromLiked(article);
                      } else {
                        innerContext.read<NewsCubit>().saveArticle(article);
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                article.title,
                style: TextStyle(color: Colors.white, fontSize: 16),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                article.author ?? '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                formatter.format(DateTime.parse(article.publishedAt)),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewsExplore(BuildContext innerContext, TextEditingController controller, NewsState state) {
    final articles = state.stateHolder.cachedArticles;
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    key: Key("news_source"),
                    controller: controller,
                    showCursor: false,
                    readOnly: true,
                    textInputAction: TextInputAction.next,
                    onTap: () {
                      innerContext.read<NewsCubit>().showNewsSources(innerContext);
                    },
                    decoration: new InputDecoration(
                      hintText: "Pick News Source",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      hintStyle: TextStyle(color: Theme.of(context).hintColor.withOpacity(0.5)),
                      contentPadding: EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 0),
                      prefixIcon: Icon(CupertinoIcons.news),
                      // suffixIcon: InkWell(
                      //   onTap: () {
                      //     String id = state.stateHolder.currentNewsSource.id;
                      //     if (id == null) {
                      //       ToastHelper.showError(
                      //         message: "You will have to pick a news source first",
                      //         isPersistent: true,
                      //         duration: Duration(seconds: 20),
                      //       );
                      //     } else {
                      //       innerContext.read<NewsCubit>().fetchNewArticles(id, false);
                      //     }
                      //   },
                      //   child: Container(
                      //     width: 100,
                      //     decoration: BoxDecoration(
                      //       color: Colors.blue,
                      //       borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(10),
                      //         bottomRight: Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         'Search',
                      //         style: TextStyle(color: Colors.white, fontSize: 18),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                InkWell(
                  onTap: () {
                    String id = state.stateHolder.currentNewsSource.id;
                    if (id == null) {
                      ToastHelper.showError(
                        message: "You will have to pick a news source first",
                        isPersistent: true,
                        duration: Duration(seconds: 20),
                      );
                    } else {
                      innerContext.read<NewsCubit>().fetchNewArticles(id, false);
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (index == articles.length + 1) {
          return SizedBox(
            height: 50,
          );
        }
        Article article = articles[index - 1];
        return _buildArticleWidget(innerContext, article);
      },
      itemCount: articles.length + 2,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 20,
        );
      },
    );
  }

  Widget _buildSavedNewsPage(BuildContext innerContext, TextEditingController controller, NewsState state) {
    final savedArticles = state.stateHolder.savedArticles;
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            child: Text(
              'Saved Articles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }
        if (index == savedArticles.length + 1 && savedArticles.isNotEmpty) {
          return SizedBox(
            height: 50,
          );
        }

        if (savedArticles.isNotEmpty) {
          Article article = savedArticles[index - 1];
          return _buildArticleWidget(innerContext, article);
        } else {
          return Container(
            height: 500,
            width: Helper.getResponsiveWidth(100, context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  "There are no saved articles yet, click on the favorite icon on articles to save an article",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }
      },
      itemCount: savedArticles.isEmpty ? 1 : savedArticles.length + 2,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 20,
        );
      },
    );
  }

  Widget _body(BuildContext innerContext, TextEditingController controller, NewsState state) {
    switch (selectedIndex) {
      case 0:
        return _buildNewsExplore(innerContext, controller, state);
      case 1:
        return _buildSavedNewsPage(innerContext, controller, state);
      default:
        return _buildNewsExplore(innerContext, controller, state);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (_) => NewsCubit()
        ..loadFromCache()
        ..fetchNewArticles(null, true),
      child: Builder(builder: (innerContext) {
        final state = innerContext.watch<NewsCubit>().state;
        TextEditingController _controller = TextEditingController(text: '');

        state.maybeWhen(
          orElse: () {},
          initial: (stateHolder) {
            _controller.text = stateHolder.currentNewsSource.name;
          },
          articlesLoaded: (stateHolder) {
            articles = stateHolder.cachedArticles;
            _controller.text = stateHolder.currentNewsSource.name;
          },
          selectedNewsSource: (stateHolder) {
            _controller.text = stateHolder.currentNewsSource.name;
          },
        );

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Helper.getResponsiveWidth(5, context)),
              child: _body(innerContext, _controller, state),
            ),
          ),
          bottomNavigationBar: _bottomNavigationBar(context),
        );
      }),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 13,
      selectedFontSize: 13,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Theme.of(context).disabledColor,
      showUnselectedLabels: true,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).backgroundColor,
          icon: Icon(Icons.explore),
          // ImageIcon(AssetImage("assets/images/logo.png")),
          title: Text(
            'Explore',
            style: TextStyle(color: selectedIndex == 0 ? Colors.red : Colors.grey),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).backgroundColor,
          icon: Icon(Icons.article),
          // ImageIcon(AssetImage("assets/images/logo.png")),
          title: Text(
            'Saved',
            style: TextStyle(color: selectedIndex == 1 ? Colors.red : Colors.grey),
          ),
        ),
      ],
    );
  }
}
