import 'package:dnd_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PetHealthPoints extends StatefulWidget {
  const PetHealthPoints({Key? key, required this.max, required this.color})
      : super(key: key);

  final int max;
  final Color color;

  @override
  State<PetHealthPoints> createState() => _PetHealthPointsState();
}

class _PetHealthPointsState extends State<PetHealthPoints> {
  @override
  void initState() {
    context
        .read<PetHealthPointsBloc>()
        .add(PetHealthPointsEvent.init(widget.max));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(
              'HIT POINTS',
              style: TextStyle(
                fontSize: 8,
                color: widget.color,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<PetHealthPointsBloc>()
                        .add(const PetHealthPointsEvent.subtract());
                  },
                  child: BlocBuilder<PetHealthPointsBloc, PetHealthPointsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const CircularProgressIndicator(),
                        loaded: (healthPoints) => Text(
                          '$healthPoints',
                          style: TextStyle(
                            fontSize: 20,
                            color: widget.color,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.color,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<PetHealthPointsBloc>()
                        .add(const PetHealthPointsEvent.add());
                  },
                  child: Text(
                    '${widget.max}',
                    style: TextStyle(
                      fontSize: 20,
                      color: widget.color,
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
