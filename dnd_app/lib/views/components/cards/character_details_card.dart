import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterDetailsCard extends StatelessWidget {
  final Character character;

  const CharacterDetailsCard({
    Key? key,
    required this.character,
  }) : super(key: key);

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
          image: AssetImage(character.img),
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
                    backgroundImage: AssetImage(character.profileImg),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        character.race,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${character.classes[1]} / ${character.classes[0]} | Lvl. ${character.level}',
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<HealthPointsBloc>(context)
                                      .add(const HealthPointsEvent.subtract());
                                },
                                child: BlocBuilder<HealthPointsBloc,
                                    HealthPointsState>(
                                  builder: (context, state) {
                                    return Text(
                                      state.current.toString(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    );
                                  },
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
                                  BlocProvider.of<HealthPointsBloc>(context)
                                      .add(const HealthPointsEvent.add());
                                },
                                child: Text(
                                  '${character.healthPoints.max}',
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
}
