// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:dnd_app/models/character/character.dart';
import 'package:dnd_app/components/character/character_specs/armor.dart';
import 'package:dnd_app/components/character/character_specs/initiative.dart';
import 'package:dnd_app/components/character/character_specs/speed.dart';
import 'package:dnd_app/components/character/character_specs/passive_perception.dart';

class CardCharacter extends StatefulWidget {
  Character character;

  CardCharacter({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  State<CardCharacter> createState() => _CardCharacterState();
}

class _CardCharacterState extends State<CardCharacter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.darken,
          ),
          image: AssetImage(widget.character.img),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.character.profileImg),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.character.race,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${widget.character.classes[1]} / ${widget.character.classes[0]} | Lvl. ${widget.character.level}',
                        style: const TextStyle(
                          fontSize: 11,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container(width: 1)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.green.shade300,
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HIT POINTS',
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (widget.character.healthPoints.current >
                                        0) {
                                      widget.character.healthPoints.current--;
                                    }
                                  });
                                },
                                child: Text(
                                  ' ${widget.character.healthPoints.current}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text(
                                '/',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (widget.character.healthPoints.current <
                                        widget.character.healthPoints.max) {
                                      widget.character.healthPoints.current++;
                                    }
                                  });
                                },
                                child: Text(
                                  '${widget.character.healthPoints.max} ',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ArmorClass(
                armor: widget.character.armor,
                color: Colors.white,
              ),
              Initiative(
                initiative: widget.character.initiative,
                color: Colors.white,
              ),
              Speed(
                speed: widget.character.speed,
                color: Colors.white,
              ),
              PassivePerception(
                passivePerception: widget.character.passivePerception,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
