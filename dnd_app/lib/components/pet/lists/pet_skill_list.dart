import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class PetSkillList extends StatefulWidget {
  final List<Skill> skills;

  const PetSkillList({Key? key, required this.skills}) : super(key: key);

  @override
  State<PetSkillList> createState() => _PetSkillListState();
}

class _PetSkillListState extends State<PetSkillList> {
  late int roll;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: const Text(
          'Skills',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: [
          ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.skills.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: PetSkillCard(
                  skill: widget.skills[index],
                ),
                onTap: () {
                  roll = d20.roll();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return RollDialog(
                          name: widget.skills[index].name,
                          modifier: widget.skills[index].modifier);
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
