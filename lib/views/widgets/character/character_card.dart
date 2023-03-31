import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  CharacterCard({Key? key, required this.character}) : super(key: key);

  final Character character;

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String name = character.name.toString();
    final String lastName = character.lastName.toString();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(character.banner),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
          ),
          child: ListTile(
            leading: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => _buildDialog(context),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(character.profileImg),
              ),
            ),
            title: Text('$name $lastName',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(
              '${character.classes[0]} ${character.classes[1]}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => Dialog(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 220,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('Welcome ${character.name}!',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ),
                        TextField(
                          autofocus: true,
                          maxLines: 1,
                          controller: passwordController,
                          obscureText: true,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Contraseña',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {
                                if (character.password ==
                                    passwordController.text) {
                                  passwordController.clear();
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CharacterDetailScreen(
                                        character: character,
                                      ),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Contraseña incorrecta'),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Ingresar'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Dialog(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(character.img),
      ),
    );
  }
}
