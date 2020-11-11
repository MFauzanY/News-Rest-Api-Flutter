import 'package:flutter/material.dart';
import 'package:newsrestapi/models/newsinfo.dart';

class DetailPage extends StatelessWidget {
  final Article article;

  DetailPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(image: NetworkImage(article.urlToImage)),
            Text(
              article.title,
              style: TextStyle(fontSize: 20),
            ),
            Text(article.description)
          ],
        ),
      ),
    );
  }
}
