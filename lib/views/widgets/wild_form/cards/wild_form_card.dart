import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class WildFormCard extends StatefulWidget {
  final List<Animal> wildForms;
  const WildFormCard({Key? key, required this.wildForms}) : super(key: key);

  @override
  State<WildFormCard> createState() => _WildFormCardState();
}

class _WildFormCardState extends State<WildFormCard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.wildForms[0].img),
                      fit: BoxFit.contain,
                      alignment: Alignment.centerRight,
                      opacity: 0.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(widget.wildForms[0].name,
                            style: const TextStyle(fontSize: 20)),
                        subtitle: Text(
                          widget.wildForms[0].race,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ArmorClass(
                              armor: widget.wildForms[0].armor,
                              color: Colors.black,
                            ),
                            WildFormHealthPoints(
                              max: widget.wildForms[0].healthPoints.max,
                              color: Colors.black,
                            ),
                            Speed(
                              speed: widget.wildForms[0].speed,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                WildFormAbilitiesList(abilities: widget.wildForms[0].abilities),
                widget.wildForms[0].savingThrows.isEmpty
                    ? const SizedBox.shrink()
                    : WildFormSavingThrowList(
                        savingThrows: widget.wildForms[0].savingThrows),
                widget.wildForms[0].skills.isEmpty
                    ? const SizedBox.shrink()
                    : SkillsList(skills: widget.wildForms[0].skills),
                WeaponsList(weapons: widget.wildForms[0].weapons),
                TraitsList(traits: widget.wildForms[0].traits),
              ],
            ),
          )),
    );
  }
}
