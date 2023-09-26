import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';

import 'package:flutter/material.dart';

class PetSavingThrowList extends StatefulWidget {
  const PetSavingThrowList({
    required this.savingThrows,
    super.key,
  });

  final List<SavingThrowModel> savingThrows;

  @override
  State<PetSavingThrowList> createState() => _PetSavingThrowListState();
}

class _PetSavingThrowListState extends State<PetSavingThrowList> {
  late int roll;

  @override
  Widget build(BuildContext context) {
    return TitleAndChildCard(
      title: 'Saving Throws',
      child: ListView.builder(
        shrinkWrap: true,
        controller: ScrollController(),
        padding: EdgeInsets.zero,
        itemCount: widget.savingThrows.length,
        itemBuilder: (context, index) {
          return PetSavingThrowCard(
            savingThrow: widget.savingThrows[index],
          );
        },
      ),
    );
  }
}
