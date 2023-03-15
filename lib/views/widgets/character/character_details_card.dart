import 'package:dnd_app/data/models/models.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterDetailsCard extends StatelessWidget {
  const CharacterDetailsCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final name = character.name,
        lastName = character.lastName,
        level = character.level;
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.darken,
          ),
          image: AssetImage(character.banner),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 35),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => _buildDialog(context),
                      );
                    },
                    child: Hero(
                      tag: 'profile_$character.profileImg',
                      child: CircleAvatar(
                        backgroundImage: AssetImage(character.profileImg),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        character.race,
                        style: const TextStyle(
                          fontSize: 11,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$name $lastName',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${character.classes[0]} / ${character.classes[1]} | Lvl. $level',
                        style: const TextStyle(
                          fontSize: 11,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CharacterHealthPoints(
                    max: character.healthPoints.max,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ArmorClass(
                armor: character.armor,
                color: Colors.white,
              ),
              Initiative(
                initiative: character.initiative,
                color: Colors.white,
              ),
              Speed(
                speed: character.speed,
                color: Colors.white,
              ),
              PassivePerception(
                passivePerception: character.passivePerception,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Dialog(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'image_$character.img',
          child: Image.asset(character.img),
        ),
      ),
    );
  }
}
