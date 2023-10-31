import 'package:flutter/material.dart';

class Constants {
  static CustomFloatActionButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black26,
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      elevation: 0,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  static List<Color> kMixedColors = [
    Color(0xff71A5D7),
    Color(0xff72CCD4),
    Color(0xffFBAB57),
    Color(0xffdc0b5a),
    Color(0xff962D17),
    Color(0xffc657fb),
    Color.fromARGB(188, 18, 144, 203),
  ];
  static customContainer(String imagesUrl, String kitapAdi, String yazar,
      int sayfaSayisi, int yazimTarihi) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 200,
          color: Colors.orangeAccent,
          child: Row(
            children: [
              Image.asset(
                imagesUrl,
                width: 150,
                height: 190,
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kitap Adi: ${kitapAdi}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Yazar: ${yazar}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Sayfa Sayısı: ${sayfaSayisi}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Yazım Tarihi: ${yazimTarihi}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
