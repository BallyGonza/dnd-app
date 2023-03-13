import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.width * .2,
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
                width: MediaQuery.of(context).size.width * .2,
                child: ElevatedButton(
                  onPressed: onSubtract,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(Icons.remove),
                ),
              ),

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

              // plus button
              SizedBox(
                width: MediaQuery.of(context).size.width * .2,
                child: ElevatedButton(
                  onPressed: onAdd,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
