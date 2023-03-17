import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletListItem extends StatefulWidget {
  final String coinType;
  int coinAmount;
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final Color color;

  WalletListItem({
    Key? key,
    required this.coinType,
    required this.coinAmount,
    required this.onAdd,
    required this.onSubtract,
    required this.color,
  }) : super(key: key);

  @override
  State<WalletListItem> createState() => _WalletListItemState();
}

class _WalletListItemState extends State<WalletListItem> {
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
            color: widget.color,
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // minus button
              SizedBox(
                width: mediaQuery.size.width * .2,
                child: ElevatedButton(
                  onPressed: widget.onSubtract,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.minus,
                    color: widget.color,
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.coinAmount.toString(),
                    style: TextStyle(
                      fontSize: mediaQuery.size.width * .06,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 1.0,
                          color: Colors.black.withOpacity(.5),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.coinType.toUpperCase(),
                    style: TextStyle(
                      fontSize: mediaQuery.size.width * .04,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 1.0,
                          color: Colors.black.withOpacity(.5),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: mediaQuery.size.width * .2,
                child: ElevatedButton(
                  onPressed: widget.onAdd,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: widget.color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
