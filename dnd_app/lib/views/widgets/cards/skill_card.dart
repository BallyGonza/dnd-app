import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final Skill skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return RollAbilitieSkillDialog(
              name: skill.name,
              modifier: skill.modifier,
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  skill.name,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(width: 5),
                skill.proficiency
                    ? CircleAvatar(
                        backgroundColor: Colors.green[200],
                        radius: 2,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            Row(
              children: [
                skill.modifier > 0
                    ? const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 9,
                      )
                    : skill.modifier == 0
                        ? const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 9,
                          )
                        : const Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 8,
                          ),
                Text(
                  skill.modifier.abs().toString(),
                  style: skill.modifier >= 0
                      ? const TextStyle(color: Colors.green, fontSize: 15)
                      : const TextStyle(color: Colors.red, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
