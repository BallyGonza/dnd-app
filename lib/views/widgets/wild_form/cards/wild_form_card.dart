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
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black,
                        Colors.grey[900]!,
                        Colors.grey[800]!,
                        Colors.grey[700]!,
                        Colors.grey[600]!,
                        Colors.grey[500]!,
                        Colors.grey[400]!,
                        Colors.grey[300]!,
                        Colors.grey[200]!,
                        Colors.grey[100]!,
                        Colors.grey[50]!,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(widget.wildForms[0].img),
                      fit: BoxFit.fitWidth,
                      opacity: 0.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.wildForms[0].name,
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text(
                                  widget.wildForms[0].race,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            WildFormHealthPoints(
                              max: widget.wildForms[0].healthPoints.max,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ArmorClass(
                              armor: widget.wildForms[0].armor,
                              color: Colors.white,
                            ),
                            Speed(
                              speed: widget.wildForms[0].speed,
                              color: Colors.white,
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
