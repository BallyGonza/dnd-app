import 'package:flutter/material.dart';
import '../../dialog/roll-of-20_dialog.dart';
import '../../cards/skill_card.dart';
import '../../../models/skill.dart';
import '../../../models/dice.dart';

class ListSkills extends StatefulWidget {
  final List<Skill> skills1;
  final List<Skill> skills2;

  const ListSkills({Key? key, required this.skills1, required this.skills2})
      : super(key: key);

  @override
  State<ListSkills> createState() => _ListSkillsState();
}

class _ListSkillsState extends State<ListSkills> {
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
            itemCount: widget.skills1.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: SkillCard(
                  skill: widget.skills1[index],
                ),
                onTap: () {
                  roll = d20.roll();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return RollDialog(
                          name: widget.skills1[index].name,
                          modifier: widget.skills1[index].modifier);
                    },
                  );
                },
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            // scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.skills2.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: SkillCard(
                  skill: widget.skills2[index],
                ),
                onTap: () {
                  roll = d20.roll();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return RollDialog(
                          name: widget.skills2[index].name,
                          modifier: widget.skills2[index].modifier);
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
