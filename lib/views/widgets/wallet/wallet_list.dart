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
              WalletListItem(
                coinType: 'Cobre',
                coinAmount: state.wallet.copperPieces,
                onTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.add('copper'),
                  );
                }),
                onDoubleTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.subtract('copper'),
                  );
                }),
                color: Colors.brown[300]!,
              ),
              WalletListItem(
                coinType: 'Plata',
                coinAmount: state.wallet.silverPieces,
                onTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.add('silver'),
                  );
                }),
                onDoubleTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.subtract('silver'),
                  );
                }),
                color: Colors.grey[300]!,
              ),
              WalletListItem(
                coinType: 'Electrum',
                coinAmount: state.wallet.electrumPieces,
                onTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.add('electrum'),
                  );
                }),
                onDoubleTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.subtract('electrum'),
                  );
                }),
                color: Colors.yellow[700]!,
              ),
              WalletListItem(
                coinType: 'Oro',
                coinAmount: state.wallet.goldPieces,
                onTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.add('gold'),
                  );
                }),
                onDoubleTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.subtract('gold'),
                  );
                }),
                color: Colors.yellow[300]!,
              ),
              WalletListItem(
                coinType: 'Platino',
                coinAmount: state.wallet.platinumPieces,
                onTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.add('platinum'),
                  );
                }),
                onDoubleTap: () => setState(() {
                  BlocProvider.of<WalletBloc>(context).add(
                    const WalletEvent.subtract('platinum'),
                  );
                }),
                color: Colors.green[900]!,
              ),
            ],
          ),
        );
      },
    );
  }
}
