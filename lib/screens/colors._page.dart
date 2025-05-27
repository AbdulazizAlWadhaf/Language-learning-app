import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<itemModel> colors = const [
    itemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Black',
      enName: 'burakku',
      sound: 'sounds/colors/black.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Brown',
      enName: 'chairo',
      sound: 'sounds/colors/brown.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Dusty Yellow',
      enName: 'kusunda kiiro',
      sound: 'sounds/colors/dusty yellow.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gray',
      enName: 'gurē',
      sound: 'sounds/colors/gray.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Green',
      enName: 'midori',
      sound: 'sounds/colors/green.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Red',
      enName: 'aka',
      sound: 'sounds/colors/red.wav'
    ),
    itemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'White',
      enName: 'shiro',
      sound: 'sounds/colors/white.wav'
    ),
    itemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Yellow',
      enName: 'kiiro',
      sound: 'sounds/colors/yellow.wav'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        foregroundColor: Colors.white,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index){
          return Item(number: colors[index], color: Colors.purple,);
      })
    );
  }


}

