import 'package:flutter/material.dart';
import 'package:shop/navpages/card_page.dart';
import 'package:shop/navpages/like_page.dart';
import 'package:shop/navpages/home_page.dart';
import 'package:shop/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //List Screen
  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const LikePage(),
    CardPage(),
    const SearchPage()
  ];

  //Index selected
  int _indexSelected = 0;
  final List<String> _icons = [
    'dashboard.png',
    'like.png',
    'card.png',
    'search.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _indexSelected,
          children: _pages,
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            _icons.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  _indexSelected = index;
                });
              },
              child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.asset(
                      'assets/icon/${_icons[index]}',
                      color:
                          _indexSelected == index ? Colors.blue : Colors.grey,
                      width: 30,
                      height: 30,
                    ),
                    Visibility(
                      visible: index == 2 ? true : false,
                      child: Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          width: 14,
                          height: 14,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
