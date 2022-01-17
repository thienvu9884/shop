import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key, required this.position}) : super(key: key);
  final int position;

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //poster
              SizedBox(
                width: double.infinity,
                child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.bottomEnd,
                    fit: StackFit.loose,
                    children: [
                      Hero(
                        tag: "dash${widget.position}",
                        child: Image.asset(
                          "assets/img/under.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -25,
                        right: 30,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/icon/checkout.png"),
                                scale: 1.9,
                                isAntiAlias: true,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.blue),
                          child: InkWell(
                            onTap: () {},
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: DottedBorder(
                          color: Colors.lightGreen,
                          dashPattern: const [5, 6],
                          strokeWidth: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/icons/like.png"),
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
                      Positioned(
                        bottom: 10,
                        left: 70,
                        child: DottedBorder(
                          color: Colors.lightGreen,
                          dashPattern: const [5, 6],
                          strokeWidth: 1,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/icons/upload.png',
                                  color: Colors.white, scale: 0.7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 30,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.15)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: const Icon(Icons.close, color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180,
                        right: 180,
                        child: Container(
                          height: 18,
                          alignment: Alignment.bottomCenter,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                          child: RichText(
                              text: const TextSpan(
                                  text: "1",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                TextSpan(
                                    text: "/",
                                    style: TextStyle(color: Colors.blue)),
                                TextSpan(
                                    text: "8",
                                    style: TextStyle(color: Colors.black))
                              ])),
                        ),
                      )
                    ]),
              ),
              const SizedBox(height: 25),
              //Description
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icon/good.png",
                      scale: 1.5,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Jacket in blue denim",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Wrangler Vintage-stvle women's",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: const [
                            Text(
                              '€120',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "VAT included",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 60,
                  child: Material(
                    elevation: 0.5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/x.png",
                          scale: 1.8,
                        ),
                        const SizedBox(width: 10),
                        const Text("100% Cotton"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: SizedBox(
                  height: 45,
                  child: Material(
                    elevation: 0.5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon/hlike.png", scale: 1.7),
                            const SizedBox(width: 10),
                            const Text("4.5 / 5")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              const Text(
                                "Reviews 12",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(width: 20),
                              Image.asset(
                                "assets/icons/arrow.png",
                                scale: 1.8,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  "Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top.",
                  style: TextStyle(height: 1.8),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "You may like",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Material(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                    clipBehavior: Clip.none,
                                    alignment: AlignmentDirectional.bottomEnd,
                                    fit: StackFit.loose,
                                    children: [
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.36,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            child: Image.asset(
                                              "assets/img/yellowts.png",
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: DottedBorder(
                                          color: Colors.deepOrangeAccent,
                                          dashPattern: const [5, 6],
                                          strokeWidth: 1,
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: const BoxDecoration(
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
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 20);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
