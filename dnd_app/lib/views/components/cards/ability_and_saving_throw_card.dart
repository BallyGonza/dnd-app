import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class AbilityCard extends StatefulWidget {
  final Ability ability;
  final SavingThrow savingThrow;

  const AbilityCard({
    Key? key,
    required this.ability,
    required this.savingThrow,
  }) : super(key: key);

  @override
  State<AbilityCard> createState() => _AbilityCardState();
}

class _AbilityCardState extends State<AbilityCard> {
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
                style: widget.ability.modifier >= 0
                    ? const TextStyle(color: Colors.green, fontSize: 20)
                    : const TextStyle(color: Colors.red, fontSize: 20),
              ),
              const SizedBox(width: 20),
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text('SAVE', style: TextStyle(fontSize: 10)),
              ),
              const SizedBox(width: 5),
              widget.savingThrow.modifier > 0
                  ? const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 10,
                    )
                  : widget.savingThrow.modifier == 0
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
                widget.savingThrow.modifier.abs().toString(),
                style: widget.savingThrow.modifier >= 0
                    ? const TextStyle(color: Colors.green, fontSize: 20)
                    : const TextStyle(color: Colors.red, fontSize: 20),
              ),
              const SizedBox(width: 5),
              widget.savingThrow.proficiency
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
