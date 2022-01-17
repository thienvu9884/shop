import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shop/model/banner_model.dart';
import 'package:shop/model/item_model.dart';
import 'package:shop/product_detail/product_detail.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final List<BannerModer> _banner = [
    BannerModer(
        img: "assets/img/item.png",
        name: "Twerk it",
        description: "Long 3/4 sleevs, sweartshit",
        price: 200),
    BannerModer(
        img: "assets/img/item.png",
        name: "Twerk two",
        description: "Long 3/4 sleevs, sweartshit",
        price: 400),
    BannerModer(
        img: "assets/img/item.png",
        name: "Twerk three",
        description: "Long 3/4 sleevs, sweartshit",
        price: 500),
    BannerModer(
        img: "assets/img/item.png",
        name: "Twerk 4",
        description: "Long 3/4 sleevs, sweartshit",
        price: 300),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                //Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: const TextSpan(
                                  text: 'product available: ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                  children: [
                                TextSpan(
                                    text: '1 364',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue))
                              ])),
                          const Text(
                            "New collection",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(150, 0, 5, 0),
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            "assets/icon/account.png",
                            scale: 1.5,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //Elevation
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 20,
                      margin: const EdgeInsets.only(top: 15),
                      //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Banner
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white10,
                      height: 330,
                      child: PageView.builder(
                          itemCount: _banner.length,
                          controller: _pageController,
                          itemBuilder: (context, index) {
                            final listban = _banner[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Material(
                                        elevation: 30,
                                        borderRadius: BorderRadius.circular(50),
                                        child: Stack(
                                            clipBehavior: Clip.none,
                                            alignment:
                                                AlignmentDirectional.bottomEnd,
                                            fit: StackFit.loose,
                                            children: [
                                              Container(
                                                width: double.maxFinite,
                                                height: 220,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/img/item.png'),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: -23,
                                                right: 20,
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration:
                                                      const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                "assets/icon/checkout.png"),
                                                            scale: 1.6,
                                                            isAntiAlias: true,
                                                          ),
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue),
                                                  child: const InkWell(),
                                                ),
                                              ),
                                              Positioned(
                                                top: 15,
                                                right: 15,
                                                child: DottedBorder(
                                                  color: Colors.white,
                                                  dashPattern: const [5, 6],
                                                  strokeWidth: 1,
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/icons/like.png"),
                                                        scale: 1.5,
                                                        isAntiAlias: true,
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  //Description
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/icons/new.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listban.name,
                                                  style: const TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  listban.description,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '€${listban.price.toInt().toString()}',
                                                style: const TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "VAT included",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    // CarouselIndicator
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: _banner.length,
                      effect: const WormEffect(dotHeight: 6, dotWidth: 6),
                      onDotClicked: (index) => _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceOut),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                //You may like
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "You may like",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Material(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: ListView.separated(
                            controller: _pageController,
                            scrollDirection: Axis.horizontal,
                            itemCount: iteml.length,
                            itemBuilder: (context, index) {
                              final item = iteml[index];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                position: index)));
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                            clipBehavior: Clip.none,
                                            alignment:
                                                AlignmentDirectional.bottomEnd,
                                            fit: StackFit.loose,
                                            children: [
                                              Hero(
                                                tag: "dash$index",
                                                child: SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.25,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  10)),
                                                      child: Image.asset(
                                                        item.img,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )),
                                              ),
                                              Positioned(
                                                top: 5,
                                                right: 5,
                                                child: DottedBorder(
                                                  color: Colors.white,
                                                  dashPattern: const [5, 6],
                                                  strokeWidth: 1,
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/icons/like.png"),
                                                        scale: 1.5,
                                                        isAntiAlias: true,
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ],
                                    ),
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      item.description,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                width: 20,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
