import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListAbilities extends StatelessWidget {
  final List<Ability> abilities;
  final List<SavingThrow> savingThrows;

  const ListAbilities(
      {Key? key, required this.abilities, required this.savingThrows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      itemCount: abilities.length,
      itemBuilder: (context, index) {
        return AbilityCard(
          ability: abilities[index],
          savingThrow: savingThrows[index],
        );
      },
    );
  }
}
