import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  const SlideItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/hoodie.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        )
      ],
    );
  }
}
