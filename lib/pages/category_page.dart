import 'package:flutter/material.dart';
import 'package:kutuphaneapp/pages/Constants/constants.dart';
import 'package:kutuphaneapp/pages/content_page.dart';
import 'package:scaled_list/scaled_list.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan[800],
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Constants.CustomFloatActionButton(context)),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "KATEGORILER",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Times New Roman",
                    color: Colors.black,
                  ),
                ),
                ScaledList(
                  unSelectedCardHeightRatio: 0.3,
                  itemCount: categories.length,
                  itemColor: (index) {
                    return Constants
                        .kMixedColors[index % Constants.kMixedColors.length];
                  },
                  itemBuilder: (index, selectedIndex) {
                    final category = categories[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContentPage(),
                            ));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: selectedIndex == index ? 150 : 140,
                            child: Image.asset(category.image),
                          ),
                          SizedBox(height: 35),
                          Text(
                            category.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: selectedIndex == index ? 35 : 20),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static final List<Category> categories = [
    Category(image: "assets/images/roman.png", name: "ROMAN"),
    Category(image: "assets/images/hikaye.png", name: "HİKAYE"),
    Category(image: "assets/images/ansiklopedi.png", name: "ANSİKLOPEDİ"),
    Category(image: "assets/images/biyografi.png", name: "BİYOGRAFİ"),
    Category(image: "assets/images/siir.png", name: "ŞİİRLER"),
    Category(image: "assets/images/korku.png", name: "KORKU"),
    Category(image: "assets/images/polisiye.png", name: "POLİSİYE"),
  ];
}

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}
