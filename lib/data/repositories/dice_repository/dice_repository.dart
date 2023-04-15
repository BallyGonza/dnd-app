import 'package:dnd_app/data/data.dart';

class DiceRepository {
  DiceRepository();
}

DiceModel d4 = DiceModel(
  id: 0,
  name: 'd4',
  sides: 4,
  img: 'assets/images/dices/d4/d4.png',
);
DiceModel d6 = DiceModel(
  id: 1,
  name: 'd6',
  sides: 6,
  img: 'assets/images/dices/d6/d6.png',
);
DiceModel d8 = DiceModel(
  id: 2,
  name: 'd8',
  sides: 8,
  img: 'assets/images/dices/d8/d8.png',
);
DiceModel d10 = DiceModel(
  id: 3,
  name: 'd10',
  sides: 10,
  img: 'assets/images/dices/d10/d10.png',
);
DiceModel d12 = DiceModel(
  id: 4,
  name: 'd12',
  sides: 12,
  img: 'assets/images/dices/d12/d12.png',
);
DiceModel d20 = DiceModel(
  id: 5,
  name: 'd20',
  sides: 20,
  img: 'assets/images/dices/d20/d20.png',
);

DiceModel d100 = DiceModel(
  id: 6,
  name: 'd100',
  sides: 100,
  img: 'assets/images/dices/d20/d20.png',
);

final dices = <DiceModel>[
  d4,
  d6,
  d8,
  d10,
  d12,
  d20,
  d100,
];
