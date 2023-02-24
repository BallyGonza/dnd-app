import 'package:dnd_app/components/components.dart';
import 'package:dnd_app/models/models.dart';
import 'package:flutter/material.dart';

class PetSavingThrowList extends StatefulWidget {
  final List<SavingThrow> savingThrows;

  const PetSavingThrowList({Key? key, required this.savingThrows})
      : super(key: key);

  @override
  State<PetSavingThrowList> createState() => _PetSavingThrowListState();
}

class _PetSavingThrowListState extends State<PetSavingThrowList> {
  late int roll;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: const Text(
          'Saving Throws',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: [
          ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.savingThrows.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: PetSavingThrowCard(
                  savingThrow: widget.savingThrows[index],
                ),
                onTap: () {
                  roll = d20.roll();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return RollDialog(
                          name: widget.savingThrows[index].name,
                          modifier: widget.savingThrows[index].modifier);
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
