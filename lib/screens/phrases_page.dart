import 'package:flutter/material.dart';
import 'package:toku_app/components/phrase_item.dart';
import 'package:toku_app/models/number.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<itemModel> Phrases = const [
    itemModel(
      jpName: 'chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    itemModel(
      jpName: 'haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    itemModel(
      jpName: 'ani',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    itemModel(
      jpName: 'ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    itemModel(
      jpName: 'otouto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    itemModel(
      jpName: 'imouto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    itemModel(
      jpName: 'musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    itemModel(
      jpName: 'musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    itemModel(
      jpName: 'sofu',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    itemModel(
      jpName: 'sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (Builder, index){
        return PhraseItem(number: Phrases[index], color: Colors.lightBlue,);
      }),
    );
  }
}