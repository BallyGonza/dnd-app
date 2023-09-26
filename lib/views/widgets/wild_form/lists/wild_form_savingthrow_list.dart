import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class WildFormSavingThrowList extends StatefulWidget {
  const WildFormSavingThrowList({required this.savingThrows, super.key});
  final List<SavingThrowModel> savingThrows;

  @override
  State<WildFormSavingThrowList> createState() =>
      _WildFormSavingThrowListState();
}

class _WildFormSavingThrowListState extends State<WildFormSavingThrowList> {
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
