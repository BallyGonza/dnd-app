import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final SkillModel skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              maxLines: 1,
              skill.name,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(width: 4),
            skill.proficiency
                ? CircleAvatar(
                    backgroundColor: Colors.green[200],
                    radius: 2,
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
                  style: skill.modifier > 0
                      ? const TextStyle(color: Colors.green, fontSize: 15)
                      : skill.modifier == 0
                          ? const TextStyle(color: Colors.grey, fontSize: 15)
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
