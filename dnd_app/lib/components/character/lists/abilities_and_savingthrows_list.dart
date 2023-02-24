import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class ListAbilities extends StatefulWidget {
  final List<Ability> abilities;
  final List<SavingThrow> savingThrows;

  const ListAbilities(
      {Key? key, required this.abilities, required this.savingThrows})
      : super(key: key);

  @override
  State<ListAbilities> createState() => _ListAbilitiesState();
}

class _ListAbilitiesState extends State<ListAbilities> {
  late int roll;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.abilities.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: AbilityCard(
                  ability: widget.abilities[index],
                  savingThrow: widget.savingThrows[index],
                ),
                onTap: () {
                  roll = d20.roll();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return RollDialog(
                          name: widget.abilities[index].name,
                          modifier: widget.savingThrows[index].modifier);
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
