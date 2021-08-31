
import 'package:flutter/material.dart';

class GifPage extends StatelessWidget {

  GifPage(this.gifData);

  final Map gifData ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gifData["title"],style: TextStyle(color: Colors.white,fontSize: 22.0),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
