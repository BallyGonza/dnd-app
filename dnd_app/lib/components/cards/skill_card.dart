import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final Skill skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding left
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(widget.skill.name, style: const TextStyle(fontSize: 15)),
              const SizedBox(width: 5),
              widget.skill.proficiency
                  ? CircleAvatar(
                      backgroundColor: Colors.green[200],
                      radius: 2,
                    )
                  : const Text(''),
            ],
          ),
          Row(
            children: [
              widget.skill.modifier > 0
                  ? const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 9,
                    )
                  : widget.skill.modifier == 0
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
                widget.skill.modifier.abs().toString(),
                style: widget.skill.modifier >= 0
                    ? const TextStyle(color: Colors.green, fontSize: 15)
                    : const TextStyle(color: Colors.red, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
