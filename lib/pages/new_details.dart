import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:news_wordpress_app/utilities/layout_utility.dart';

class NewsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 250,
          ),
          SliverFillRemaining(
            child: NewsDetail(),
          )
        ],
      ),
    );
  }

  Widget newDetialSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row1(),
          LayoutUtils.iconText(Icon(Icons.timer), Text("01st Jan 2021")),
          SizedBox(
            height: 15,
          ),
          Text(
            "Vishv First News",
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            width: 100,
          ),
          Expanded(
            child: Html(
              style: {
                "p" : Style(color : Colors.grey,fontSize: FontSize.large)
              },
                data: "<p>Test News</p></p>Test News Paragraph 2</p>"),
          )
        ],
      ),
    );
  }

  Widget Row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              "Sports",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Feather.moon),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Feather.bookmark),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
