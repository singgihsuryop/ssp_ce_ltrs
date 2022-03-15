class CardSpeechModel {
  String category;
  String cardImage;
  int cardBackground;
  String cardPage;

  CardSpeechModel(
      this.category, this.cardImage, this.cardBackground, this.cardPage);
}

List<CardSpeechModel> cardsSpeech = cardData
    .map((item) => CardSpeechModel(
        item['category'].toString(),
        item['cardImage'].toString(),
        int.parse(item['cardBackground'].toString()),
        item['cardPage'].toString()))
    .toList();

// add titlefont color, title fontstyle, cardbackgroundcolor
var cardData = [
  {
    "category": "Hewan",
    "cardImage": "animal.png",
    "cardBackground": 0xFF1E1E99,
    "cardPage": "/animalSpeechPage"
  },
  {
    "category": "Kendaraan",
    "cardImage": "vehicle.png",
    "cardBackground": 0xFFFF70A3,
    "cardPage": "/vehicleSpeechPage"
  },
  {
    "category": "Peralatan Rumah",
    "cardImage": "household.png",
    "cardBackground": 0xFFFF0000,
    "cardPage": "/householdSpeechPage"
  },
  {
    "category": "Warna-warni",
    "cardImage": "color.png",
    "cardBackground": 0xFF7a7a7a,
    "cardPage": "/colorSpeechPage"
  },
  {
    "category": "Bentuk 2 Dimensi",
    "cardImage": "shape2d.png",
    "cardBackground": 0xFF00ffff,
    "cardPage": "/shape2DSpeechPage"
  },
  {
    "category": "Bentuk 3 Dimensi",
    "cardImage": "shape3d.png",
    "cardBackground": 0xFFffd700,
    "cardPage": "/shape3DSpeechPage"
  },
  {
    "category": "Huruf",
    "cardImage": "letter.png",
    "cardBackground": 0xFF4b0082,
    "cardPage": "/letterSpeechPage"
  },
  {
    "category": "Angka",
    "cardImage": "number.png",
    "cardBackground": 0xFF00ff3b,
    "cardPage": "/numberSpeechPage"
  }
];
