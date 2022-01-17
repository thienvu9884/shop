import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop/model/card_model.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final PageController _listController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
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
                        "Cart",
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
              //Discount
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0x00f8f8f8),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/gift.png",
                            scale: 1.5,
                          ),
                          const SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "-10%",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Enjoy Student Discount",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color(0x00f8f8f8),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        "GIVE A GIFT",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              //Item
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                child: ListView.separated(
                  controller: _listController,
                  itemCount: cardl.length,
                  itemBuilder: (context, index) {
                    final card = cardl[index];
                    return Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        extentRatio: 0.3,
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (_) {
                              setState(() => cardl.removeAt(index));
                            },
                            flex: 2,
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: '',
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: SizedBox(
                                width: 130,
                                child: Image(
                                  image: AssetImage(card.img),
                                  fit: BoxFit.fill,
                                )),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      card.name,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "€ ${card.price.toInt().toString()}",
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  card.description,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  card.size,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Color: ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 10,
                                      child:
                                          Image(image: AssetImage(card.color)),
                                    )
                                  ],
                                ),
                                Text(
                                  "Quantity: ${card.quantity}",
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 10),
                  // separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 10); },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
