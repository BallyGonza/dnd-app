import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class PetSkillCard extends StatefulWidget {
  final Skill skill;

  const PetSkillCard({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  State<PetSkillCard> createState() => _PetSkillCardState();
}

class _PetSkillCardState extends State<PetSkillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            children: [
              Text(widget.skill.name, style: const TextStyle(fontSize: 20)),
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
              widget.skill.modifier < 0
                  ? const SizedBox(
                      width: 1.2,
                    )
                  : const Text(''),
              widget.skill.modifier > 0
                  ? const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 10,
                    )
                  : widget.skill.modifier == 0
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
                widget.skill.modifier.abs().toString(),
                style: widget.skill.modifier >= 0
                    ? const TextStyle(color: Colors.green, fontSize: 20)
                    : const TextStyle(color: Colors.red, fontSize: 20),
              ),
              const SizedBox(width: 5),
              widget.skill.proficiency
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
    );
  }
}
