import 'package:flutter/material.dart';

class SpellSpecContainer extends StatelessWidget {
  const SpellSpecContainer({
    Key? key,
    required this.spec,
    required this.specDetail,
  }) : super(key: key);

  final String spec;
  final String specDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          width: 156,
          child: Column(
            children: [
              Text(
                spec,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.purple[100],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                specDetail,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
