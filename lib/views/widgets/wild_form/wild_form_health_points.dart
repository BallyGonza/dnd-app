import 'package:dnd_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WildFormHealthPoints extends StatefulWidget {
  const WildFormHealthPoints(
      {Key? key, required this.characterId, required this.max})
      : super(key: key);

  final int max;
  final int characterId;

  @override
  State<WildFormHealthPoints> createState() => _WildFormHealthPointsState();
}

class _WildFormHealthPointsState extends State<WildFormHealthPoints> {
  @override
  void initState() {
    context
        .read<WildFormHPBloc>()
        .add(WildFormHPEvent.init(widget.characterId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            const FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'HIT POINTS',
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<WildFormHPBloc>()
                        .add(const WildFormHPEvent.subtract());
                  },
                  child: BlocBuilder<WildFormHPBloc, WildFormHPState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const CircularProgressIndicator(),
                        loaded: (healthPoints) => Text(
                          '$healthPoints',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<WildFormHPBloc>()
                        .add(const WildFormHPEvent.add());
                  },
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '${widget.max}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
