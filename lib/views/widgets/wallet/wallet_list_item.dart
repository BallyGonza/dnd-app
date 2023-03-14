import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletListItem extends StatelessWidget {
  final String coinType;
  final int coinAmount;
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final Color color;

  const WalletListItem({
    Key? key,
    required this.coinType,
    required this.coinAmount,
    required this.onAdd,
    required this.onSubtract,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          width: mediaQuery.size.width * .9,
          height: mediaQuery.size.width * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            border: Border.all(color: color, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // minus button
              SizedBox(
                width: mediaQuery.size.width * .2,
                child: ElevatedButton(
                  onPressed: onSubtract,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: const CircleBorder(),
                  ),
                  child: const FaIcon(FontAwesomeIcons.minus),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    coinAmount.toString(),
                    style: TextStyle(
                      fontSize: mediaQuery.size.width * .06,
                    ),
                  ),
                  Text(
                    coinType.toUpperCase(),
                    style: TextStyle(
                      fontSize: mediaQuery.size.width * .04,
                      color: color,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: mediaQuery.size.width * .2,
                child: ElevatedButton(
                  onPressed: onAdd,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: const CircleBorder(),
                  ),
                  child: const FaIcon(FontAwesomeIcons.plus),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
