import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class ListSkills extends StatelessWidget {
  final List<Skill> skills;

  const ListSkills({Key? key, required this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: skills.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            SkillCard(
              skill: skills[index],
            ),
            const Divider()
          ],
        );
      },
    );
  }
}
