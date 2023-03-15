import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class WildFormAbilityCard extends StatefulWidget {
  final Ability ability;

  const WildFormAbilityCard({
    Key? key,
    required this.ability,
  }) : super(key: key);

  @override
  State<WildFormAbilityCard> createState() => _WildFormAbilityCardState();
}

class _WildFormAbilityCardState extends State<WildFormAbilityCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return RollAbilitieSkillDialog(
              name: widget.ability.name,
              modifier: widget.ability.modifier,
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                Text(
                    widget.ability.score > 9
                        ? '${widget.ability.score}'
                        : '  ${widget.ability.score}',
                    style: const TextStyle(fontSize: 20)),
                Text(widget.ability.name, style: const TextStyle(fontSize: 20)),
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
                widget.ability.modifier < 0
                    ? const SizedBox(
                        width: 1.2,
                      )
                    : const Text(''),
                // plus icon
                widget.ability.modifier > 0
                    ? const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 10,
                      )
                    : widget.ability.modifier == 0
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
                  widget.ability.modifier.abs().toString(),
                  style: widget.ability.modifier > 0
                      ? const TextStyle(color: Colors.green, fontSize: 20)
                      : widget.ability.modifier == 0
                          ? const TextStyle(color: Colors.grey, fontSize: 20)
                          : const TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
