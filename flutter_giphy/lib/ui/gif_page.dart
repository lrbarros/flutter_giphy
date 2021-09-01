
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  GifPage(this.gifData);

  final Map gifData ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(gifData["title"],style: TextStyle(color: Colors.white,fontSize: 22.0),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.share),onPressed: (){
            Share.share(gifData["images"]["fixed_height"]["url"]);
          },),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
