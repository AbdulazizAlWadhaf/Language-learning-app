import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors._page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

import '../components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumbersPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: Colors.green,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: Colors.purple,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}

