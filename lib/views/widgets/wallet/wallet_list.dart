import 'package:dnd_app/bloc/bloc.dart';
import 'package:dnd_app/views/views.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

class WalletList extends StatefulWidget {
  const WalletList({required this.characterId, Key? key}) : super(key: key);

  final int characterId;

  @override
  State<WalletList> createState() => _WalletListState();
}

class _WalletListState extends State<WalletList> {
  @override
  void initState() {
    super.initState();
    context.read<WalletBloc>().add(
          WalletEvent.init(widget.characterId),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const CircularProgressIndicator(),
          updated: (wallet) => Align(
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
                          title: const Text(
                            'Enter Amount',
                          ),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Enter Amount',
                            ),
                            onChanged: (value) {
                              setState(() {
                                wallet.copperPieces = int.parse(value);
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    context.read<WalletBloc>().add(
                                          WalletEvent.set(
                                            'copper',
                                            wallet.copperPieces,
                                          ),
                                        );
                                  },
                                );
                                Navigator.of(_).pop();
                              },
                              child: const Text(
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
                    coinAmount: wallet.copperPieces,
                    onAdd: () => setState(
                      () {
                        context.read<WalletBloc>().add(
                              const WalletEvent.add('copper'),
                            );
                      },
                    ),
                    onSubtract: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.subtract('copper'),
                          );
                    }),
                    color: const Color(0xFFB87333),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                            'Enter Amount',
                          ),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              hintText: 'Enter Amount',
                            ),
                            onChanged: (value) {
                              setState(() {
                                wallet.silverPieces = int.parse(value);
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    context.read<WalletBloc>().add(
                                          WalletEvent.set(
                                            'silver',
                                            wallet.silverPieces,
                                          ),
                                        );
                                  },
                                );
                                Navigator.of(_).pop();
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }),
                  child: WalletListItem(
                    coinType: 'Plata',
                    coinAmount: wallet.silverPieces,
                    onAdd: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.add('silver'),
                          );
                    }),
                    onSubtract: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.subtract('silver'),
                          );
                    }),
                    color: const Color(0xFFC0C0C0),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                            'Enter Amount',
                          ),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              hintText: 'Enter Amount',
                            ),
                            onChanged: (value) {
                              setState(() {
                                wallet.electrumPieces = int.parse(value);
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    context.read<WalletBloc>().add(
                                          WalletEvent.set(
                                            'electrum',
                                            wallet.electrumPieces,
                                          ),
                                        );
                                  },
                                );
                                Navigator.of(_).pop();
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }),
                  child: WalletListItem(
                    coinType: 'Electrum',
                    coinAmount: wallet.electrumPieces,
                    onAdd: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.add('electrum'),
                          );
                    }),
                    onSubtract: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.subtract('electrum'),
                          );
                    }),
                    color: const Color(0xFFC0D9D9),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                            'Enter Amount',
                          ),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              hintText: 'Enter Amount',
                            ),
                            onChanged: (value) {
                              setState(() {
                                wallet.goldPieces = int.parse(value);
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    context.read<WalletBloc>().add(
                                          WalletEvent.set(
                                            'gold',
                                            wallet.goldPieces,
                                          ),
                                        );
                                  },
                                );
                                Navigator.of(_).pop();
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }),
                  child: WalletListItem(
                    coinType: 'Oro',
                    coinAmount: wallet.goldPieces,
                    onAdd: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.add('gold'),
                          );
                    }),
                    onSubtract: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.subtract('gold'),
                          );
                    }),
                    color: const Color(0xFFD4AF37),
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text(
                            'Enter Amount',
                          ),
                          content: TextField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Enter Amount',
                            ),
                            onChanged: (value) {
                              setState(() {
                                wallet.platinumPieces = int.parse(value);
                              });
                            },
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    context.read<WalletBloc>().add(
                                          WalletEvent.set(
                                            'platinum',
                                            wallet.platinumPieces,
                                          ),
                                        );
                                  },
                                );
                                Navigator.of(_).pop();
                              },
                              child: const Text(
                                'Ok',
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }),
                  child: WalletListItem(
                    coinType: 'Platino',
                    coinAmount: wallet.platinumPieces,
                    onAdd: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.add('platinum'),
                          );
                    }),
                    onSubtract: () => setState(() {
                      context.read<WalletBloc>().add(
                            const WalletEvent.subtract('platinum'),
                          );
                    }),
                    color: const Color(0xFFE5E4E2),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
