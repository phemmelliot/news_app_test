import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/data/news/model/news_source.dart';

typedef callBack = void Function(NewsSource newsSource);
typedef callBackVoid = void Function();

class NewsSourcesPicker {
  final BuildContext context;
  final callBack onItemSelected;
  final List<NewsSource> newsSources;

  NewsSourcesPicker({this.context, this.onItemSelected, this.newsSources});

  show() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        context: context,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        builder: (builder) {
          return new Container(
            child: _Picker(onItemSelected, newsSources),
          );
        });
  }
}

class _Picker extends StatefulWidget {
  final callBack onItemSelected;
  final List<NewsSource> newsSources;
  _Picker(this.onItemSelected, this.newsSources);

  @override
  State<StatefulWidget> createState() {
    return _State(onItemSelected);
  }
}

class _State extends State<_Picker> {
  final callBack onItemSelected;

  _State(this.onItemSelected);

  List<NewsSource> _filtereds;

  @override
  void initState() {
    _filtereds = widget.newsSources;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 60, bottom: 10, right: 16, left: 16),
            child: Text(
              "Select News Source",
              style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 18),
            ),
          ),
          _searchBar(),
          Container(
              child: Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return _newsSourceItem(
                  onTap: () {
                    this.onItemSelected(_filtereds[index]);
                    Navigator.pop(context);
                  },
                  newsSource: _filtereds[index],
                );
              },
              itemCount: _filtereds.length,
              padding: const EdgeInsets.all(1),
            ),
          ))
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      height: 45.0,
      alignment: Alignment.center,
      child: new Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          child: TextField(
            autofocus: true,
            onChanged: (x) {
              setState(() {
                _filtereds = widget.newsSources
                    .where((newsSource) => newsSource.name.toLowerCase().startsWith(x.toLowerCase()))
                    .toList();
              });
            },
            decoration: new InputDecoration(
              hintText: "Search",
              prefixIcon: Container(
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset("assets/img/search.svg"),
              ), // Icon(Icons.search),
              // fillColor: Pallet.lightColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
            ),
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 17),
            key: Key("search_country"),
          )),
    );
  }

  Widget _newsSourceItem({callBackVoid onTap, NewsSource newsSource}) {
    print(newsSource.toJson());
    return Container(
        margin: EdgeInsets.only(bottom: 1),
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Image.asset(
                          //   country.flag,
                          //   scale: 14,
                          // ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Expanded(
                            child: Container(
                              child: Text(
                                newsSource.name ?? newsSource.id,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(fontSize: 14, decoration: TextDecoration.none),
                                key: Key("country_returned"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/img/right_icon.png",
                        color: Theme.of(context).primaryTextTheme.bodyText1.color,
                        height: 14,
                        width: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
            ],
          ),
        ));
  }
}
