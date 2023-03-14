import 'package:dnd_app/data/models/models.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterDetailsCard extends StatelessWidget {
  const CharacterDetailsCard({
    Key? key,
    required this.name,
    required this.lastName,
    required this.img,
    required this.profileImg,
    required this.race,
    required this.classes,
    required this.level,
    required this.healthPoints,
    required this.armor,
    required this.speed,
    required this.initiative,
    required this.passivePerception,
  }) : super(key: key);

  final String name;
  final String lastName;
  final String img;
  final String profileImg;
  final String race;
  final List<String> classes;
  final int level;
  final HealthPoints healthPoints;
  final int armor;
  final int speed;
  final int initiative;
  final int passivePerception;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.darken,
          ),
          image: AssetImage(img),
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
                      tag: 'profile_$profileImg',
                      child: CircleAvatar(
                        backgroundImage: AssetImage(profileImg),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        race,
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
                        '${classes[0]} / ${classes[1]} | Lvl. $level',
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
                    max: healthPoints.max,
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
                armor: armor,
                color: Colors.white,
              ),
              Initiative(
                initiative: initiative,
                color: Colors.white,
              ),
              Speed(
                speed: speed,
                color: Colors.white,
              ),
              PassivePerception(
                passivePerception: passivePerception,
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
          tag: 'image_$img',
          child: Image.asset(img),
        ),
      ),
    );
  }
}
