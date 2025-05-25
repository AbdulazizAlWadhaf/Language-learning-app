import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(image: 'assets/images/numbers/number_one.png', jpName: 'ichi', enName: 'one'),
    Number(image: 'assets/images/numbers/number_two.png', jpName: 'Ni', enName: 'two'),
    Number(image: 'assets/images/numbers/number_three.png', jpName: 'san', enName: 'three'),
    Number(image: 'assets/images/numbers/number_four.png', jpName: 'Shi', enName: 'four'),
    Number(image: 'assets/images/numbers/number_five.png', jpName: 'Go', enName: 'five'),
    Number(image: 'assets/images/numbers/number_six.png', jpName: 'Roku', enName: 'six'),
    Number(image: 'assets/images/numbers/number_seven.png', jpName: 'Sebun', enName: 'seven'),
    Number(image: 'assets/images/numbers/number_eight.png', jpName: 'Hachi', enName: 'eight'),
    Number(image: 'assets/images/numbers/number_nine.png', jpName: 'Kyu', enName: 'nine'),
    Number(image: 'assets/images/numbers/number_ten.png', jpName: 'Ju', enName: 'ten'),
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
      body: ListView(
        children: [
          Item(number: numbers[0]),
          Item(number: numbers[1]),
          Item(number: numbers[2]),
          Item(number: numbers[3]),
          Item(number: numbers[4]),
          Item(number: numbers[5]),
          Item(number: numbers[6]),
          Item(number: numbers[7]),
          Item(number: numbers[8]),
          Item(number: numbers[9]),
        ],
      ),
    );
  }
}

