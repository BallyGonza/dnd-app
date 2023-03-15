import 'package:dnd_app/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WildFormHealthPoints extends StatefulWidget {
  const WildFormHealthPoints({Key? key, required this.max, required this.color})
      : super(key: key);

  final int max;
  final Color color;

  @override
  State<WildFormHealthPoints> createState() => _WildFormHealthPointsState();
}

class _WildFormHealthPointsState extends State<WildFormHealthPoints> {
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
                    BlocProvider.of<WildFormHealthPointsBloc>(context)
                        .add(const WildFormHealthPointsEvent.subtract());
                  },
                  child: BlocBuilder<WildFormHealthPointsBloc,
                      WildFormHealthPointsState>(
                    builder: (context, state) {
                      return Text(
                        state.current.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: widget.color,
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
                    BlocProvider.of<WildFormHealthPointsBloc>(context)
                        .add(const WildFormHealthPointsEvent.add());
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
