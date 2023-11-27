import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class PetCard extends StatefulWidget {
  const PetCard({
    required this.characterId,
    required this.pets,
    super.key,
  });

  final List<AnimalModel> pets;
  final int characterId;

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
        child: Card(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.pets[0].img),
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                    opacity: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        widget.pets[0].name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        widget.pets[0].race,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ArmorClass(
                            armor: widget.pets[0].armor,
                            color: Colors.black,
                          ),
                          PetHealthPoints(
                            characterId: widget.characterId,
                            max: widget.pets[0].healthPoints.max,
                          ),
                          Speed(
                            speed: widget.pets[0].speed,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PetAbilitiesList(abilities: widget.pets[0].abilities),
              PetSavingThrowList(savingThrows: widget.pets[0].savingThrows),
              SkillsList(skills: widget.pets[0].skills),
              WeaponsList(weapons: widget.pets[0].weapons),
              TraitsList(traits: widget.pets[0].traits),
            ],
          ),
        ),
      ),
    );
  }
}
