import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

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
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.skills1.length,
            itemBuilder: (context, index) {
              return SkillCard(
                skill: widget.skills1[index],
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.skills2.length,
            itemBuilder: (context, index) {
              return SkillCard(
                skill: widget.skills2[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
