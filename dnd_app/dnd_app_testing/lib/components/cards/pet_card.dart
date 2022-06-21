import 'package:dnd_app/components/cards/hp_controller_card.dart';
import 'package:dnd_app/components/character/character_specs/armor.dart';
import 'package:dnd_app/components/character/character_specs/speed.dart';
import 'package:dnd_app/components/character/lists/abilities_and_savingthrows_list.dart';
import 'package:dnd_app/components/character/lists/traits_list.dart';
import 'package:dnd_app/components/pet/cards/pet_trait_card.dart';
import 'package:dnd_app/components/pet/lists/pet_abilities_list.dart';
import 'package:dnd_app/components/pet/lists/pet_savingthrow_list.dart';
import 'package:dnd_app/components/pet/lists/pet_skill_list.dart';
import 'package:dnd_app/components/pet/lists/pet_traits_list.dart';
import 'package:dnd_app/components/pet/lists/pet_weapon_list.dart';
import 'package:flutter/material.dart';
import '../../../models/pet.dart';

class PetCard extends StatefulWidget {
  final Pet pet;
  PetCard({Key? key, required this.pet}) : super(key: key);

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: ExpansionTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.pet.profileImg),
            radius: 30,
          ),
          title: Text(widget.pet.name, style: const TextStyle(fontSize: 20)),
          subtitle: Text(
            widget.pet.race,
            style: const TextStyle(color: Colors.grey),
          ),
          childrenPadding:
              const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 4),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ArmorClass(armor: widget.pet.armor, color: Colors.black),
                  HpController(
                      maxHp: widget.pet.maxHp,
                      currentHp: widget.pet.currentHp,
                      color: Colors.black),
                  Speed(speed: widget.pet.speed, color: Colors.black),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PetAbilitiesList(abilities: widget.pet.abilities),
            ),
            PetSavingThrowList(savingThrows: widget.pet.savingThrows),
            PetSkillList(skills: widget.pet.allSkills),
            PetWeaponList(weapons: widget.pet.weapons),
            PetTraitsList(pet: widget.pet)
          ]),
    );
  }
}
