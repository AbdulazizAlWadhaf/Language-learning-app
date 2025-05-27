import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

import '../components/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<itemModel> FamilyMembers = const [
    itemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'ani',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otouto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imouto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'sofu',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: FamilyMembers.length,
        itemBuilder: (Builder, index){
        return Item(number: FamilyMembers[index], color: Colors.green,);
      }),
    );
  }
}