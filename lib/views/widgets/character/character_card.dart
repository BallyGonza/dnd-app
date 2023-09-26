import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  CharacterCard({
    required this.character,
    super.key,
  });

  final CharacterModel character;

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final name = character.name;
    final lastName = character.lastName;

    return Padding(
      padding: const EdgeInsets.all(8),
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
          leading: InkWell(
            onTap: () {
              showDialog<Dialog>(
                context: context,
                builder: (_) => _buildDialog(context),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(character.profileImg),
            ),
          ),
          title: Text(
            '$name $lastName',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '${character.classes[0]} ${character.classes[1]}',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
          onTap: () {
            showDialog<CustomShowDialog>(
              context: context,
              builder: (_) => CustomShowDialog(
                title: 'Welcome ${character.name}!',
                content: CustomTextField(
                  hint: 'Password',
                  controller: passwordController,
                ),
                rightActionName: 'Enter',
                onPressed: () {
                  if (character.password == passwordController.text) {
                    passwordController.clear();
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute<CharacterDetailScreen>(
                        builder: (context) => CharacterDetailScreen(
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
              ),
            );
          },
        ),
      ),
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
