import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class AbilityCard extends StatelessWidget {
  final Ability ability;
  final SavingThrow savingThrow;

  const AbilityCard({
    Key? key,
    required this.ability,
    required this.savingThrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return RollAbilitieSkillDialog(
              name: ability.name,
              modifier: savingThrow.modifier,
            );
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                Text(
                    ability.score > 9
                        ? '${ability.score}'
                        : '  ${ability.score}',
                    style: const TextStyle(fontSize: 20)),
                Text(ability.name, style: const TextStyle(fontSize: 20)),
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text('MOD', style: TextStyle(fontSize: 10)),
                ),
                const SizedBox(width: 5),
                ability.modifier < 0
                    ? const SizedBox(
                        width: 1.2,
                      )
                    : const Text(''),
                ability.modifier > 0
                    ? const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 10,
                      )
                    : ability.modifier == 0
                        ? const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 10,
                          )
                        : const Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 10,
                          ),
                Text(
                  ability.modifier.abs().toString(),
                  style: ability.modifier >= 0
                      ? const TextStyle(color: Colors.green, fontSize: 20)
                      : const TextStyle(color: Colors.red, fontSize: 20),
                ),
                const SizedBox(width: 20),
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text('SAVE', style: TextStyle(fontSize: 10)),
                ),
                const SizedBox(width: 5),
                savingThrow.modifier > 0
                    ? const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 10,
                      )
                    : savingThrow.modifier == 0
                        ? const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 10,
                          )
                        : const Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 10,
                          ),
                Text(
                  savingThrow.modifier.abs().toString(),
                  style: savingThrow.modifier >= 0
                      ? const TextStyle(color: Colors.green, fontSize: 20)
                      : const TextStyle(color: Colors.red, fontSize: 20),
                ),
                const SizedBox(width: 5),
                savingThrow.proficiency
                    ? CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 2,
                      )
                    : const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 2,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
