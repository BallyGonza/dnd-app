import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/views/widgets/title_and_child.dart';
import 'package:flutter/material.dart';

class WildFormSavingThrowList extends StatefulWidget {
  final List<SavingThrow> savingThrows;

  const WildFormSavingThrowList({Key? key, required this.savingThrows})
      : super(key: key);

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
        padding: const EdgeInsets.all(0),
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
