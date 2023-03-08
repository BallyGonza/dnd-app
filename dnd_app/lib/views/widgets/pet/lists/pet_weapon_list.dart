import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class PetWeaponList extends StatefulWidget {
  final List<Weapon> weapons;
  const PetWeaponList({Key? key, required this.weapons}) : super(key: key);

  @override
  State<PetWeaponList> createState() => _PetWeaponListState();
}

class _PetWeaponListState extends State<PetWeaponList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        title: const Text(
          'Weapons',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        children: [
          ListView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.weapons.length,
            itemBuilder: (context, index) {
              return PetWeaponCard(
                weapon: widget.weapons[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
