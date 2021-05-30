import 'package:flutter/material.dart';
import 'package:news_wordpress_app/pages/new_details.dart';
import 'package:news_wordpress_app/utilities/layout_utility.dart';

class NewsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(16.0),
      ),
      child: new InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => NewsDetail()
          ));
        },
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                new ClipRRect(
                  child: Image.network(
                      "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80"),
                  borderRadius: BorderRadius.only(
                      topLeft: new Radius.circular(16.0),
                      topRight: new Radius.circular(16.0)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      "Technology",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            new Padding(
              padding: new EdgeInsets.all(15),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Vishv First news",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      LayoutUtils.iconText(
                        Icon(Icons.timer),
                        Text(
                          "02nd Jan 2021",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      new GestureDetector(
                        onTap: (){

                        },
                        child: Icon(Icons.favorite_border),

                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
