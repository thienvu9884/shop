import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              //Header
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(250, 0, 5, 0),
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
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "What are you looking for?",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color(0x00f8f8f8),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/icons/tshirt.png",
                              scale: 1.5,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Top",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/icons/tshirt.png",
                              scale: 1.5,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Top",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/icons/tshirt.png",
                              scale: 1.5,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Top",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("My recent searches",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              //recent
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 5),
                        height: 30,
                        child: Material(
                          elevation: 0.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Hugo Boss",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Text("Women, shoes",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/icons/arrow.png",
                                  scale: 1.7,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 30,
                        child: Material(
                          elevation: 0.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Hugo Boss",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Text("Women, shoes",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/icons/arrow.png",
                                  scale: 1.7,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 30,
                        child: Material(
                          elevation: 0.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Hugo Boss",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Text("Women, shoes",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/icons/arrow.png",
                                  scale: 1.7,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 30,
                        child: Material(
                          elevation: 0.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Hugo Boss",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Text("Women, shoes",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/icons/arrow.png",
                                  scale: 1.7,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 50),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset("assets/img/searchimg.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
