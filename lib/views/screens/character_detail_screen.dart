import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CharacterDetailScreen extends StatefulWidget {
  const CharacterDetailScreen({
    required this.character,
    super.key,
  });
  final CharacterModel character;

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  ValueNotifier<bool> isDialOpen = ValueNotifier<bool>(false);
  int selected = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          CharacterDetailsCard(
            character: widget.character,
          ),
          NavBar(
            character: widget.character,
            selected: selected,
            onPressed: (index) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 600),
                curve: Curves.ease,
              );
            },
          ),
          _stackedWidgets(),
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
    );
  }

  SpeedDialChild _diceFABItem({required DiceModel dice}) {
    return SpeedDialChild(
      child: Image.asset(dice.img, width: 30, height: 30),
      backgroundColor: Colors.white,
      onTap: () {
        isDialOpen.value = !isDialOpen.value;
        showDialog<RollDiceDialog>(
          context: context,
          builder: (context) {
            return RollDiceDialog(dice: dice);
          },
        );
      },
    );
  }

  Widget _stackedWidgets() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.67,
      child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selected = index;
          });
        },
        children: <Widget>[
          AbilitiesList(
            abilities: widget.character.abilities,
            savingThrows: widget.character.savingThrows,
          ),
          SkillsList(
            skills: widget.character.skills,
          ),
          if (widget.character.weapons.isNotEmpty)
            WeaponsList(
              weapons: widget.character.weapons,
            )
          else
            const SizedBox.shrink(),
          if (widget.character.spells.isNotEmpty)
            SpellsList(
              spells: widget.character.spells,
            )
          else
            const SizedBox.shrink(),
          NoteList(
            characterId: widget.character.id,
          ),
          BackgroundsList(
            backgrounds: widget.character.background,
            languages: widget.character.languages,
          ),
          if (widget.character.traits.isNotEmpty)
            TraitsList(
              traits: widget.character.traits,
            )
          else
            const SizedBox.shrink(),
          if (widget.character.wildForms.isNotEmpty)
            WildFormCard(
              characterId: widget.character.id,
              wildForms: widget.character.wildForms,
            )
          else
            const SizedBox.shrink(),
          if (widget.character.pets.isNotEmpty)
            PetCard(
              characterId: widget.character.id,
              pets: widget.character.pets,
            )
          else
            const SizedBox.shrink(),
          if (widget.character.backstory != '')
            BackstoryCard(
              backstory: widget.character.backstory,
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
