import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/services/services.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final ScrollController _scrollController = ScrollController();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
        ),
        child: Wrap(
          children: [
            CharacterDetailsCard(
              character: widget.character,
            ),
            NavBar(
              character: widget.character,
              navController: _scrollController,
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
      ),
      floatingActionButton: SpeedDial(
        overlayOpacity: 0,
        backgroundColor: Colors.black,
        activeIcon: Icons.close,
        activeBackgroundColor: Colors.white,
        spacing: 4,
        openCloseDial: isDialOpen,
        children: [
          _diceFABItem(dice: d4),
          _diceFABItem(dice: d6),
          _diceFABItem(dice: d8),
          _diceFABItem(dice: d10),
          _diceFABItem(dice: d12),
          _diceFABItem(dice: d20),
        ],
        child: const Icon(MyFlutterApp.d20, color: Colors.white),
      ),
    );
  }

  SpeedDialChild _diceFABItem({required DiceModel dice}) {
    return SpeedDialChild(
      child: Image.asset(dice.img, width: 30, height: 30),
      shape: const CircleBorder(),
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
      height: MediaQuery.of(context).size.height * 0.7,
      child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selected = index;
            if (index <= 6) {
              _scrollController.animateTo(
                _scrollController.position.minScrollExtent + (index * 80),
                duration: const Duration(milliseconds: 600),
                curve: Curves.ease,
              );
            }
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
          WeaponsList(
            weapons: widget.character.weapons,
          ),
          SpellsList(
            spells: widget.character.spells,
          ),
          NoteList(
            characterId: widget.character.id,
          ),
          BackgroundsList(
            backgrounds: widget.character.background,
            languages: widget.character.languages,
          ),
          TraitsList(
            traits: widget.character.traits,
          ),
          if (widget.character.wildForms.isEmpty)
            const NoWildForm()
          else
            WildFormCard(
              characterId: widget.character.id,
              wildForms: widget.character.wildForms,
            ),
          if (widget.character.pets.isEmpty)
            const NoPet()
          else
            PetCard(
              characterId: widget.character.id,
              pets: widget.character.pets,
            ),
          if (widget.character.backstory.isEmpty)
            const NoBackstory()
          else
            BackstoryCard(
              backstory: widget.character.backstory,
            ),
        ],
      ),
    );
  }
}
