// // ignore: import_of_legacy_library_into_null_safe
// // ignore: import_of_legacy_library_into_null_safe
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:carousel_slider/carousel_slider.dart';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import "package:carousel_slider/carousel_controller.dart";

final List<String> imgList = [
  'https://support.apple.com/content/dam/edam/applecare/images/en_US/psp/featured-section-give-back-trade-in_2x.jpg',
  'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-pro-13-og-202011?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1604347427000',
  'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/apple-watch-6s-202009_GEO_NL?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1599936764000',
  'https://cdn.mos.cms.futurecdn.net/vhwLRsPFTGesFDwYNXRZpB-1200-80.jpg',
  'https://images.cnbctv18.com/wp-content/uploads/2020/10/iphones_prices_141020-768x432.jpg',
  'https://www.bought4cash.com/wp-content/uploads/2019/10/appleproductlineup-800x313.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8zxeuXjOSj8ZSRUvE2tz7z1P2Ode453ZvgQ&usqp=CAU'
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Maroob.com",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Icon(Icons.account_circle_rounded),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Icon(Icons.shopping_cart_rounded),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Icon(Icons.notifications_active_rounded),
          )
        ],
      ),
      body: CarouselWithIndicatorDemo(),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  int _selectedIndex = 0;
  //New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Sort By"),
                  Icon(Icons.sort_rounded),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&amp;hei=1112&amp;fmt=jpeg&amp;qlt=80&amp;.v=1604021663000")),
                    Text("Apple iphone 12 125gb"),
                    Text(""),
                    Text("\$1200"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/apple-tv-4k-hero-select-202104_FMT_WHH?wid=940&hei=1112&fmt=p-jpg&qlt=95&.v=1617137945000")),
                    Text("Apple iphone 12 125gb"),
                    Text(""),
                    Text("\$1200"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-macbook-air-gold-202002?wid=1000&hei=1000&fmt=jpeg&qlt=95&.v=1610746650000")),
                    Text("Apple iphone 12 125gb"),
                    Text(""),
                    Text("\$1200"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            "https://www.onemorething.nl/wp-content/uploads/2021/04/iMac-kleurtjes-2.jpeg")),
                    Text("Apple iphone 12 125gb"),
                    Text(""),
                    Text("\$1200"),
                  ],
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded),
              label: "Browse",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: "Account Info",
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000.0,
                      height: 1000,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        // child: Text(
                        //   'No. ${imgList.indexOf(item)} image',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Browse extends StatelessWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
