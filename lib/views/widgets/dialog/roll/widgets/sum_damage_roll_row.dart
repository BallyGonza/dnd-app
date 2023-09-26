import 'package:dnd_app/data/data.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SumDamageRollsRow extends StatefulWidget {
  const SumDamageRollsRow({
    required this.weapon,
    required this.damageRolls,
    required this.plusDamageRolls,
    required this.toHitRoll,
    super.key,
  });

  final WeaponModel weapon;
  final int toHitRoll;
  final List<int> damageRolls;
  final List<int> plusDamageRolls;

  @override
  State<SumDamageRollsRow> createState() => _SumDamageRollsRowState();
}

class _SumDamageRollsRowState extends State<SumDamageRollsRow> {
  late int totalDamage;
  @override
  void initState() {
    totalDamage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.toHitRoll == 20) {
      for (var i = 0; i < widget.damageRolls.length; i++) {
        widget.damageRolls[i] = widget.damageRolls[i] * 2;
      }
    }

    if (widget.plusDamageRolls.isEmpty) {
      totalDamage =
          widget.damageRolls.reduce((value, element) => value + element) +
              widget.weapon.damage;
    } else {
      totalDamage = widget.damageRolls
              .reduce((value, element) => value + element) +
          widget.plusDamageRolls.reduce((value, element) => value + element) +
          widget.weapon.damage;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              if (widget.weapon.quantityOfDamageDices > 1)
                Text(
                  '${widget.weapon.quantityOfDamageDices}d',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                )
              else
                const SizedBox.shrink(),
              Image.asset(
                widget.weapon.damageDice.img,
                width: 20,
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            widget.damageRolls
                .reduce((value, element) => value + element)
                .toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          if (widget.plusDamageRolls.isNotEmpty)
            SizedBox(
              width: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.green,
                    size: 15,
                  ),
                  Image.asset(
                    widget.weapon.plusDamageDice!.img,
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    widget.plusDamageRolls
                        .reduce((value, element) => value + element)
                        .toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          else
            const SizedBox.shrink(),
          const SizedBox(
            width: 4,
          ),
          PlusMinusIcon(modifier: widget.weapon.damage),
          const SizedBox(
            width: 4,
          ),
          Text(
            '${widget.weapon.damage.abs()}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          const FaIcon(FontAwesomeIcons.arrowRight, size: 15),
          const SizedBox(
            width: 4,
          ),
          Text(
            '$totalDamage',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
