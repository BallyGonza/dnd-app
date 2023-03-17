import 'package:dnd_app/blocs/blocs.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

class WalletList extends StatefulWidget {
  const WalletList({Key? key}) : super(key: key);

  @override
  State<WalletList> createState() => _WalletListState();
}

class _WalletListState extends State<WalletList> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WalletBloc>(context).add(const WalletInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () => setState(() {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(
                          'Enter Amount',
                        ),
                        content: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter Amount',
                          ),
                          onChanged: (value) {
                            setState(() {
                              state.wallet.copperPieces = int.parse(value);
                            });
                          },
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  BlocProvider.of<WalletBloc>(context).add(
                                    WalletEvent.set(
                                      'copper',
                                      state.wallet.copperPieces,
                                    ),
                                  );
                                },
                              );
                              Navigator.of(_).pop();
                            },
                            child: Text(
                              'Ok',
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
                child: WalletListItem(
                  coinType: 'Cobre',
                  coinAmount: state.wallet.copperPieces,
                  onAdd: () => setState(
                    () {
                      BlocProvider.of<WalletBloc>(context).add(
                        const WalletEvent.add('copper'),
                      );
                    },
                  ),
                  onSubtract: () => setState(() {
                    BlocProvider.of<WalletBloc>(context).add(
                      const WalletEvent.subtract('copper'),
                    );
                  }),
                  color: const Color(0xFFB87333),
                ),
              ),
              // WalletListItem(
              //   coinType: 'Plata',
              //   coinAmount: state.wallet.silverPieces,
              //   onAdd: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.add('silver'),
              //     );
              //   }),
              //   onSubtract: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.subtract('silver'),
              //     );
              //   }),
              //   color: const Color(0xFFC0C0C0),
              // ),
              // WalletListItem(
              //   coinType: 'Electrum',
              //   coinAmount: state.wallet.electrumPieces,
              //   onAdd: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.add('electrum'),
              //     );
              //   }),
              //   onSubtract: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.subtract('electrum'),
              //     );
              //   }),
              //   color: const Color(0xFFC0D9D9),
              // ),
              // WalletListItem(
              //   coinType: 'Oro',
              //   coinAmount: state.wallet.goldPieces,
              //   onAdd: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.add('gold'),
              //     );
              //   }),
              //   onSubtract: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.subtract('gold'),
              //     );
              //   }),
              //   color: const Color(0xFFD4AF37),
              // ),
              // WalletListItem(
              //   coinType: 'Platino',
              //   coinAmount: state.wallet.platinumPieces,
              //   onAdd: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.add('platinum'),
              //     );
              //   }),
              //   onSubtract: () => setState(() {
              //     BlocProvider.of<WalletBloc>(context).add(
              //       const WalletEvent.subtract('platinum'),
              //     );
              //   }),
              //   color: const Color(0xFFE5E4E2),
              // ),
            ],
          ),
        );
      },
    );
  }
}
