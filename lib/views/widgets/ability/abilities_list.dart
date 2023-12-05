import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class AbilitiesList extends StatelessWidget {
  const AbilitiesList({
    required this.abilities,
    required this.savingThrows,
    super.key,
  });
  final List<AbilityModel> abilities;
  final List<SavingThrowModel> savingThrows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: abilities.length > 4
              ? MediaQuery.of(context).size.height * 0.38
              : MediaQuery.of(context).size.height * 0.15,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            color: Colors.white,
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
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
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
