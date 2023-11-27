import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({
    required this.skills,
    super.key,
  });

  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: skills.length > 4
              ? MediaQuery.of(context).size.height * 0.58
              : MediaQuery.of(context).size.height * 0.15,
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
                      'Skills',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                GridView.builder(
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
