import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsApi {

  String url =  "https://newsapi.org/v2/everything?q=technology&apiKey=390cac380a9949abbb4b2e57812c0c72" ;

  Future<List> loadNews() async {

    try{
      http.Response response = await http.get(url);
     const JsonDecoder decoder =  const JsonDecoder();
     //we need only articles
     return decoder.convert(response.body)['articles'];

    } on Exception catch(_){
        return null;
    }
  }
}