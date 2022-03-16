import 'package:ssp_ce_flutter/speech_home_page.dart';

class Card1Model {
  String cardImage;
  String cardTitle;
  int cardBackground;
  String cardPage;

  Card1Model(
      this.cardImage, this.cardTitle, this.cardBackground, this.cardPage);
}

List<Card1Model> cards1 = cardData
    .map((item) => Card1Model(
        item['cardImage'].toString(),
        item['cardTitle'].toString(),
        int.parse(item['cardBackground'].toString()),
        item['cardPage'].toString()))
    .toList();

var cardData = [
  {
    "cardImage": "latihan-berbicara.png",
    "cardTitle": "Latihan Berbicara",
    "cardBackground": 0xFF1E1E99,
    "cardPage": "/speechHomePage"
  },
  {
    "cardImage": "new-feature-soon.png",
    "cardTitle": "Informasi lainnya",
    "cardBackground": 0xFFFF70A3,
    "cardPage": ""
  }
];
