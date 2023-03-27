import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class AbilitiesList extends StatelessWidget {
  final List<Ability> abilities;
  final List<SavingThrow> savingThrows;

  const AbilitiesList(
      {Key? key, required this.abilities, required this.savingThrows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: abilities.length > 4
              ? MediaQuery.of(context).size.height * 0.40
              : MediaQuery.of(context).size.height * 0.15,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Abilities',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  itemCount: abilities.length,
                  itemBuilder: (context, index) {
                    return AbilityCard(
                      ability: abilities[index],
                      savingThrow: savingThrows[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
