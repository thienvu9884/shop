import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isCheck = false;
  bool isTransparent = false;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           RichText(
      //               text: const TextSpan(
      //                   text: 'Total price: ',
      //                   style: TextStyle(fontSize: 16, color: Colors.grey),
      //                   children: [
      //                 TextSpan(
      //                     text: '€ 430',
      //                     style: TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.blue))
      //               ])),
      //           const Text(
      //             "VAT included",
      //             style: TextStyle(fontSize: 16, color: Colors.grey),
      //           )
      //         ],
      //       ),
      //       Container(
      //         alignment: Alignment.bottomCenter,
      //         width: 70,
      //         height: 35,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(5),
      //             color: Colors.blue,
      //             boxShadow: [
      //               BoxShadow(
      //                   color: Colors.blue.withOpacity(0.5),
      //                   spreadRadius: 1,
      //                   blurRadius: 5,
      //                   offset: const Offset(0, 5))
      //             ]),
      //         child: const Padding(
      //           padding: EdgeInsets.only(bottom: 4),
      //           child: Text(
      //             "Next",
      //             style: TextStyle(color: Colors.white, fontSize: 18),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                //Header
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          "Checkout",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(200, 0, 0, 10),
                        width: 25,
                        height: 25,
                        child: const Icon(Icons.close_rounded,
                            color: Colors.white, size: 20),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                //Elevation
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 1,
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
                const SizedBox(height: 20),
                //tab bar
                TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        text: "Shipment",
                      ),
                      Tab(
                        text: "Payment",
                      ),
                      Tab(
                        text: "Summary",
                      )
                    ]),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: Material(
                      elevation: 0.4,
                      child: Text(
                        "Delivery address",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Material(
                          elevation: 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  flex: 2,
                                  child: Text(
                                      "Gauthier Drewitt 7303 W Alexander Rd Las Vegas, NV 89129 USA"),
                                ),
                                const Expanded(child: SizedBox(width: 30)),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    setState(() {
                                      _isCheck = !_isCheck;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.orange)),
                                    child: _isCheck
                                        ? Container(
                                            margin: const EdgeInsets.all(3),
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.cyan,
                                            ),
                                          )
                                        : null,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text("New address"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.center,
                      fit: StackFit.loose,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: isTransparent
                                      ? Colors.amber
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/img/delivery.png",
                                  scale: 1.5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Free shipment",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Free shipment over 100€",
                                      style: TextStyle(color: Colors.grey)),
                                  Text("Deliver time 2-3 days",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                              const Text("€ 0",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Opacity(
                            opacity: isTransparent ? 1 : 0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isTransparent = !isTransparent;
                                });
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                child: const Icon(Icons.check,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.13,
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: isTransparent
                                  ? Colors.transparent
                                  : Colors.amber),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/img/delivery.png", scale: 1.5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      text: "Get ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                    TextSpan(
                                        text: "premium ",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "shipment",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))
                                  ])),
                              RichText(
                                  text: const TextSpan(
                                      text: "Deliver time ",
                                      style: TextStyle(color: Colors.grey),
                                      children: [
                                    TextSpan(
                                        text: "24h",
                                        style: TextStyle(color: Colors.blue)),
                                  ]))
                            ],
                          ),
                          const Text("€ 30",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 0,
                      child: Opacity(
                        opacity: isTransparent ? 0 : 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isTransparent = !isTransparent;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: const Icon(Icons.check,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
