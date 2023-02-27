import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/logic/logic.dart';
import 'package:dnd_app/views/views.dart';
import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailScreen({Key? key, required this.character})
      : super(key: key);

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  var isVisible = false;
  var isDialOpen = ValueNotifier<bool>(false);
  var isDialFightOpen = ValueNotifier<bool>(false);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CharacterHealthPointsBloc(
              widget.character.healthPoints,
            ),
          ),
          widget.character.pet.isNotEmpty
              ? BlocProvider(
                  create: (context) => PetHealthPointsBloc(
                    widget.character.pet[0].healthPoints,
                  ),
                )
              : BlocProvider(
                  create: (context) => PetHealthPointsBloc(
                    HealthPoints(
                      current: 0,
                      max: 0,
                    ),
                  ),
                ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              '${widget.character.name} ${widget.character.lastName}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: ListView(
            controller: ScrollController(),
            children: [
              CharacterDetailsCard(
                img: widget.character.img,
                race: widget.character.race,
                armor: widget.character.armor,
                level: widget.character.level,
                speed: widget.character.speed,
                classes: widget.character.classes,
                initiative: widget.character.initiative,
                profileImg: widget.character.profileImg,
                healthPoints: widget.character.healthPoints,
                passivePerception: widget.character.passivePerception,
              ),
              Column(
                children: [
                  _navigationButtons(),
                  _stackedWidgets(),
                  const SizedBox(height: 80),
                ],
              ),
            ],
          ),
          floatingActionButton: SpeedDial(
            overlayOpacity: 0,
            backgroundColor: Colors.black,
            activeIcon: Icons.close,
            spacing: 3,
            openCloseDial: isDialOpen,
            children: [
              _diceFABItem(dice: d4),
              _diceFABItem(dice: d6),
              _diceFABItem(dice: d8),
              _diceFABItem(dice: d10),
              _diceFABItem(dice: d12),
              _diceFABItem(dice: d20),
            ],
            child: const Icon(MyFlutterApp.d20),
          ),
        ),
      ),
    );
  }

  SpeedDialChild _diceFABItem({required Dice dice}) {
    return SpeedDialChild(
      child: Icon(dice.icon),
      backgroundColor: Colors.white,
      onTap: () {
        setState(() {
          isDialOpen.value = false;
          showDialog(
              context: context,
              builder: (context) {
                return RollDiceDialog(dice: dice);
              });
        });
      },
    );
  }

  Widget _stackedWidgets() {
    return IndexedStack(
      index: index,
      children: <Widget>[
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            }
          },
          child: ListAbilities(
            abilities: widget.character.abilities,
            savingThrows: widget.character.savingThrows,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: ListSkills(
            skills1: widget.character.skills1,
            skills2: widget.character.skills2,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: ListWeapons(
            weapons: widget.character.weapons,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: ListSpells(
            spells: widget.character.spells,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: ListTraits(
            traits: widget.character.traits,
            favoredEnemy: widget.character.favoredEnemy,
            favoredTerrain: widget.character.favoredTerrain,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: ListBackgrounds(
            backgrounds: widget.character.background,
            languages: widget.character.languages,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: BackstoryCard(
            backstory: widget.character.backstory,
          ),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                index++;
              });
            } else if (details.primaryVelocity! > 0) {
              setState(() {
                index--;
              });
            }
          },
          child: const NoteList(),
        ),
        GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  index++;
                });
              } else if (details.primaryVelocity! > 0) {
                setState(() {
                  index--;
                });
              }
            },
            child: widget.character.pet.isNotEmpty
                ? PetCard(
                    pet: widget.character.pet,
                  )
                : const SizedBox.shrink()),
      ],
    );
  }

  Widget _navigationButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button('ABILITIES', 0),
          _button('SKILLS', 1),
          _button('ATTACKS', 2),
          _button('SPELLS', 3),
          _button('TRAITS', 4),
          _button('BACKGROUND', 5),
          _button('BACKSTORY', 6),
          _button('LOOT', 7),
          widget.character.pet.isNotEmpty
              ? _button('PET', 8)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _button(name, indexButton) {
    return TextButton(
      onPressed: () => setState(() => index = indexButton),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 14.0,
                color: index == indexButton ? Colors.black : Colors.grey[400]),
          ),
          Container(
            height: 2.0,
            width: 20.0,
            color:
                index == indexButton ? Colors.green[200] : Colors.transparent,
          ),
        ],
      ),
    );
  }
}