
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search = "";
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;
    if ( _search.isEmpty)
      response = await http.get(Uri.parse( "https://api.giphy.com/v1/gifs/trending?api_key=3GdWDP2FMa6khjK657kRMpWUed4xGvv5&limit=20&rating=g"));
     else
      response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/search?api_key=3GdWDP2FMa6khjK657kRMpWUed4xGvv5&q=$_search&limit=20&offset=$_offset&rating=g&lang=pt"));

     return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    _getGifs().then((map) {
      print(map.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
