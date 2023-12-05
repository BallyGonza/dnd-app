import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class PetSkillsList extends StatelessWidget {
  const PetSkillsList({
    required this.skills,
    super.key,
  });

  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    return TitleAndChildCard(
      title: 'Skills',
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: skills.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5,
        ),
        itemBuilder: (context, index) {
          return SkillCard(
            skill: skills[index],
          );
        },
      ),
    );
  }
}
