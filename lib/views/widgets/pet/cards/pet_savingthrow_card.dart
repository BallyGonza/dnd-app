import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class PetSavingThrowCard extends StatefulWidget {
  final SavingThrowModel savingThrow;

  const PetSavingThrowCard({
    Key? key,
    required this.savingThrow,
  }) : super(key: key);

  @override
  State<PetSavingThrowCard> createState() => _PetSavingThrowCardState();
}

class _PetSavingThrowCardState extends State<PetSavingThrowCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return RollAbilitieSkillDialog(
                name: widget.savingThrow.name,
                modifier: widget.savingThrow.modifier);
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
                Text(widget.savingThrow.name,
                    style: const TextStyle(fontSize: 20)),
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
                widget.savingThrow.modifier < 0
                    ? const SizedBox(
                        width: 1.2,
                      )
                    : const Text(''),
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
      ),
    );
  }
}
