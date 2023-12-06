import 'package:hive/hive.dart';

part 'wallet_model.g.dart';

@HiveType(typeId: 12)
class WalletModel {
  WalletModel({
    required this.platinum,
    required this.gold,
    required this.electrum,
    required this.silver,
    required this.copper,
  });
  @HiveField(0)
  int platinum;
  @HiveField(1)
  int gold;
  @HiveField(2)
  int electrum;
  @HiveField(3)
  int silver;
  @HiveField(4)
  int copper;

  void addPieces({required String pieces}) {
    if (pieces == 'platinum') {
      platinum += 1;
    } else if (pieces == 'gold') {
      gold += 1;
    } else if (pieces == 'electrum') {
      electrum += 1;
    } else if (pieces == 'silver') {
      silver += 1;
    } else if (pieces == 'copper') {
      copper += 1;
    }
  }

  void setPieces({required String pieces, required int amount}) {
    if (pieces == 'platinum') {
      platinum = amount;
    } else if (pieces == 'gold') {
      gold = amount;
    } else if (pieces == 'electrum') {
      electrum = amount;
    } else if (pieces == 'silver') {
      silver = amount;
    } else if (pieces == 'copper') {
      copper = amount;
    }
  }

  void removePieces({required String pieces}) {
    if (pieces == 'platinum' && platinum > 0) {
      platinum -= 1;
    } else if (pieces == 'gold' && gold > 0) {
      gold -= 1;
    } else if (pieces == 'electrum' && electrum > 0) {
      electrum -= 1;
    } else if (pieces == 'silver' && silver > 0) {
      silver -= 1;
    } else if (pieces == 'copper' && copper > 0) {
      copper -= 1;
    }
  }
}
