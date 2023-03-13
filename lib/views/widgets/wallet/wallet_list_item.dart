import 'package:flutter/material.dart';

class WalletListItem extends StatelessWidget {
  final String coinType;
  final int coinAmount;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  final Color color;

  const WalletListItem({
    Key? key,
    required this.coinType,
    required this.coinAmount,
    required this.onTap,
    required this.onDoubleTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: color),
            ),
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.width * .4,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                coinAmount.toString(),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .06),
              ),
              Text(
                coinType.toUpperCase(),
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .04,
                  color: color,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
