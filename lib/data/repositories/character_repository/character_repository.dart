import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CharacterRepository {
  CharacterRepository();

  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');

  //get character of the box
  Future<CharacterModel> getCharacter(int id) async {
    return box.get(id)!;
  }

  //save character
  Future<void> saveCharacter(CharacterModel character) async {
    await box.put(character.id, character);
  }

  // get characters
  Future<List<CharacterModel>> getCharacters() async {
    for (final character in defaultCharacters) {
      if (!box.containsKey(character.id)) {
        await saveCharacter(character);
      }
    }
    return box.values.toList();
  }
}

final List<CharacterModel> defaultCharacters = [
  theekVarus,
  vaunea,
  evendurGreycastle
];

CharacterModel theekVarus = CharacterModel(
  id: 0,
  name: 'Theek',
  lastName: 'Varus',
  race: 'Wood Elf',
  level: 9,
  speed: 7,
  armor: 17,
  initiative: 4,
  hitDice: d10,
  passivePerception: 19,
  classes: ['Ranger', 'Beastmaster'],
  languages: 'Común, Elfíco y Draconico',
  healthPoints: HealthPointsModel(current: 84, max: 84),
  abilities: [
    AbilityModel(name: 'Fuerza', score: 8, modifier: -1),
    AbilityModel(name: 'Destreza', score: 18, modifier: 4),
    AbilityModel(name: 'Constitución', score: 17, modifier: 3),
    AbilityModel(name: 'Inteligencia', score: 15, modifier: 2),
    AbilityModel(name: 'Sabiduría', score: 20, modifier: 5),
    AbilityModel(name: 'Carisma', score: 8, modifier: -1),
  ],
  savingThrows: [
    SavingThrowModel(name: 'Fuerza', modifier: 3, proficiency: true),
    SavingThrowModel(name: 'Destreza', modifier: 8, proficiency: true),
    SavingThrowModel(name: 'Constitucion', modifier: 3, proficiency: false),
    SavingThrowModel(name: 'Inteligencia', modifier: 2, proficiency: false),
    SavingThrowModel(name: 'Sabiduria', modifier: 5, proficiency: false),
    SavingThrowModel(name: 'Carisma', modifier: -1, proficiency: false),
  ],
  skills: [
    SkillModel(name: 'Acrobacias', modifier: 4, proficiency: false),
    SkillModel(name: 'Atletismo', modifier: -1, proficiency: false),
    SkillModel(name: 'Conoc. Arcano', modifier: 2, proficiency: false),
    SkillModel(name: 'Engaño', modifier: -1, proficiency: false),
    SkillModel(name: 'Historia', modifier: 2, proficiency: false),
    SkillModel(name: 'Interpretacion', modifier: 5, proficiency: false),
    SkillModel(name: 'Intimidación', modifier: -1, proficiency: false),
    SkillModel(name: 'Investigación', modifier: 6, proficiency: true),
    SkillModel(name: 'J. de Manos', modifier: 4, proficiency: false),
    SkillModel(name: 'Medicina', modifier: 5, proficiency: false),
    SkillModel(name: 'Naturaleza', modifier: 2, proficiency: true),
    SkillModel(name: 'Percepción', modifier: 9, proficiency: true),
    SkillModel(name: 'Perspicacia', modifier: -1, proficiency: false),
    SkillModel(name: 'Persuasion', modifier: -1, proficiency: false),
    SkillModel(name: 'Religión', modifier: 2, proficiency: false),
    SkillModel(name: 'Sigilo', modifier: 8, proficiency: true),
    SkillModel(name: 'Supervivencia', modifier: 5, proficiency: false),
    SkillModel(name: 'T. Animales', modifier: 9, proficiency: true),
  ],
  pets: [ghost],
  weapons: [longBow, rapier, dagger],
  traits: [
    darkVision,
    feyAncestry,
    wildMask,
    favoredEnemy,
    naturalHealing,
    favoredTerrain,
    primalInstinct,
    stealthyHunter
  ],
  spells: [
    speakWithAnimals,
    stormOfSpikes,
    huntersMark,
    spiritOfHealing,
    animalSense,
    revive,
    elementalWeapon
  ],
  wallet: WalletModel(
    copper: 0,
    silver: 0,
    electrum: 0,
    gold: 0,
    platinum: 0,
  ),
  notes: [],
  wildForms: [],
  background: [
    BackgroundModel(
      name: 'Rasgos de Personalidad',
      description:
          'Siente un llamado natural a explorar nuevos y desconocidos lugares.',
    ),
    BackgroundModel(
      name: 'Ideales',
      description:
          'La vida, asi como las estaciones, están en constante cambio, y lo natural es aceptar y adaptarse a estos cambios.',
    ),
    BackgroundModel(
      name: 'Vínculos',
      description:
          'Siente una union particular con la tierra de sus ancestros, confía en que de allí proviene su verdadera esencia.',
    ),
    BackgroundModel(
      name: 'Defectos',
      description: 'Obstinado en cambiar de opinion.',
    ),
  ],
  backstory:
      'Nacido en una aldea cercana a la ciudad de Nervalis, en la república de Temna Sul ubicada en el continente de Kuhana, Theek Varus se crió escuchando las historias sobre sus ancestros cazadores provenientes de Nezjassil, las tierras élficas ubicadas en el lejano continente de Faudun Ur.\n\nSu familia lo entrenó en el arte de la caza con arco y flecha y le impartieron sus conocimientos sobre exploración.\n\nComo es costumbre en su tribu, a la edad de 16 años se le encomendó cazar, capturar y matar una presa peligrosa, para alcanzar oficialmente la adultez.\n\nLuego de pasar semanas solo en los bosques, logró dar con las huellas de su objetivo y seguirle la pista hasta su cueva, sin embargo al ver que su presa había dado a luz pocos días atrás, Theek se encontró ante la diferencia entre cazar para alimentarse y cazar para obtener un trofeo. Al cabo de unos días regresó a su aldea con las manos vacías, orgulloso de su decisión.\n\nSin embargo, su familia no aceptó sus planteos y le dieron dos opciones: Seguir la tradición o ser desterrado.\n\nInamovible en su decisión y su orgullo, Theek Varus se retiró de su aldea sin mirar atrás.\n\nHabitó durante años en los bosques, cazando sólo lo necesario para sobrevivir y puliendo sus habilidades con el arco.\n\nSabiendo que, debido a la distancia le resultaba imposible visitar ese lugar, siempre se preguntó si los elfos de las tierras de Nezjassil compartirían o no sus ideales.\n\nCon el paso del tiempo su camino lo llevó a los bosques cercanos a la ciudad de Raienar, que limitan al Oeste con la república de Kandra Sul y al norte con la República Imperial de Lessyria.\n\nFue en estos bosques donde, siguiendo unas misteriosas huellas, conoció a Vaunea, de la raza Goliath, desconocida hasta ese momento para Theek y vio en ella capacidades para la caza.\n\nAl comienzo Vaunea parecía rechazarlo por el simple hecho de ser un elfo, pero ante la insistencia de Theek y la revelación de que él mismo había abandonado a su propia raza, comenzaron a viajar juntos en busca de nuevas oportunidades.\n\nCaracterística: Tiene una gran capacidad para reconocer y memorizar la disposición general de un terreno. Asimismo, estando en terreno fértil, le resulta fácil encontrar agua y alimentos para él y hasta cinco personas más cada día.',
  img: 'assets/images/characters/theek_varus/theek_varus.jpeg',
  profileImg: 'assets/images/characters/theek_varus/theek_varus_profile.jpeg',
  banner: 'assets/images/characters/theek_varus/theek_varus_banner.jpeg',
  password: 'test',
);

CharacterModel vaunea = CharacterModel(
  id: 1,
  name: 'Vaunea',
  lastName: '',
  level: 9,
  race: 'Goliath',
  classes: ['Barbarian (7)', 'Druid (2)', 'Guerrera del totem'],
  armor: 13,
  initiative: -1,
  speed: 8,
  passivePerception: 19,
  hitDice: d10,
  healthPoints: HealthPointsModel(current: 123, max: 123),
  abilities: [
    AbilityModel(name: 'Fuerza', score: 19, modifier: 4),
    AbilityModel(name: 'Destreza', score: 8, modifier: -1),
    AbilityModel(name: 'Constitución', score: 19, modifier: 4),
    AbilityModel(name: 'Inteligencia', score: 12, modifier: 1),
    AbilityModel(name: 'Sabiduría', score: 12, modifier: 1),
    AbilityModel(name: 'Carisma', score: 10, modifier: 0),
  ],
  savingThrows: [
    SavingThrowModel(name: 'Fuerza', modifier: 8, proficiency: true),
    SavingThrowModel(name: 'Destreza', modifier: -1, proficiency: false),
    SavingThrowModel(name: 'Constitucion', modifier: 8, proficiency: true),
    SavingThrowModel(name: 'Inteligencia', modifier: 1, proficiency: false),
    SavingThrowModel(name: 'Sabiduria', modifier: 1, proficiency: false),
    SavingThrowModel(name: 'Carisma', modifier: 0, proficiency: false),
  ],
  skills: [
    SkillModel(name: 'Acrobacias', modifier: -1, proficiency: false),
    SkillModel(name: 'Atletismo', modifier: 8, proficiency: true),
    SkillModel(name: 'Conoc. Arcano', modifier: 1, proficiency: false),
    SkillModel(name: 'Engaño', modifier: 0, proficiency: false),
    SkillModel(name: 'Historia', modifier: 1, proficiency: false),
    SkillModel(name: 'Interpretacion', modifier: 0, proficiency: false),
    SkillModel(name: 'Intimidación', modifier: 0, proficiency: false),
    SkillModel(name: 'Investigación', modifier: 1, proficiency: false),
    SkillModel(name: 'J. de Manos', modifier: -1, proficiency: false),
    SkillModel(name: 'Medicina', modifier: 1, proficiency: false),
    SkillModel(name: 'Naturaleza', modifier: 5, proficiency: true),
    SkillModel(name: 'Percepción', modifier: 5, proficiency: true),
    SkillModel(name: 'Perspicacia', modifier: 1, proficiency: false),
    SkillModel(name: 'Persuasion', modifier: 0, proficiency: false),
    SkillModel(name: 'Religión', modifier: 1, proficiency: false),
    SkillModel(name: 'Sigilo', modifier: -1, proficiency: false),
    SkillModel(name: 'Supervivencia', modifier: 5, proficiency: true),
    SkillModel(name: 'T. Animales', modifier: 1, proficiency: false),
  ],
  weapons: [hammerOfFire, hammer, axe, sword],
  languages: 'Común, Gigante',
  traits: [
    rockResistance,
    bornFromMountains,
    senseDanger,
    carelessAttack,
    bearTotem,
    viewOfTheEagle,
    wildAttacks,
    wildForm,
  ],
  spells: [
    druidcraft,
    repair,
    animalFriendship,
    speakWithAnimals,
  ],
  pets: [chimuelo],
  wildForms: [bear],
  notes: [],
  wallet: WalletModel(
    copper: 0,
    silver: 0,
    electrum: 0,
    gold: 0,
    platinum: 0,
  ),
  background: [
    BackgroundModel(
      name: 'Rasgos de Personalidad',
      description:
          'El dinero no representa para ella algo de tanto valor como la comida y otros bienes prácticos y útiles.',
    ),
    BackgroundModel(
      name: 'Ideales',
      description:
          'Heredando el carácter reservado de sus padres, opina que meterse en los asuntos personales de otros no vale la pena y sólo puede traer problemas.',
    ),
    BackgroundModel(
      name: 'Vínculos',
      description:
          'Tiende a ser más apegada a la naturaleza que a los seres vivos, ya que sobrevivió todo este tiempo gracias a ella.',
    ),
    BackgroundModel(
      name: 'Defectos',
      description:
          'Si bien no es ajena a las interacciones sociales, le cuesta mucho confiar en los demás, en especial en aquellos que acaba de conocer.',
    ),
  ],
  backstory:
      'Nacida en altamar, en una no muy grande embarcación pesquera, Vaunea nunca supo nada sobre su lugar de origen, salvo que sus padres, ambos Goliaths, una raza emparentada a los gigantes, habían sido desterrados de su aldea y decidieron comenzar una nueva vida lejos de su tribu.\n\nHasta sus 7 años de edad, habitó es embarcación en la cual su padre trabajaba tanto de pescador como de guardia ante posibles ataques o robos. No mucho tiempo después, una extraña enfermedad azotó a casi toda la tripulación, por lo cual desembarcaron de emergencia en las costas de Kandra Sul, la frondosa república medio-élfica al sur del continente de Kuhana.\n\nSi bien Vaunea no resultó afectada por la enfermedad, sus padres no corrieron con la misma suerte. Como extranjeros en una tierra de orgullosos elfos y medios-elfos, no recibieron mucha ayuda de los habitantes de Kandra Sul y decidieron vivir en los bosques, enseñándole a su pequeña hija a sobrevivir mediante la caza.\n\nAl cabo de menos de dos años, la extraña enfermedad que debilitaba a sus padres comenzó a cobrar intensidad. Vaunea pasó a ser la principal proveedora de alimentos de su familia hasta que, unos años después, la enfermedad se cobró sus vidas.\n\nSola en medio de los interminables bosques de Kandra Sul y rechazada por los habitantes de las ciudades y aldeas, Vaunea aprendió a vivir y sobrevivir por su propia cuenta, recorriendo de a poco el país, en busca de mejores tierras.\n\nDurante años evitó el contacto con otras personas, salvo alguna ocasional caravana mercante con la cual comerciar los animales que capturaba a cambio de otros bienes.\n\nEn su peregrinaje cruzó a la república vecina de Temna Sul, donde conoció a un explorador llamado Theek Varus. Si bien al comienzo Vaunea no confiaba en este elfo, la misma raza que había ignorado a sus padres, pronto descubrió que tenían más en común de lo que pensaba y comenzaron a viajar juntos, combinando sus habilidades de supervivencia.\n\nCaracteristica: Gracias a su experiencia viviendo tanto en altamar como en el bosque, posee un talento natural para prever las condiciones climáticas en las próximas 24 horas. Además, su habilidad para sobrevivir sola le ha otorgado una gran capacidad para obtener pieles y otros elementos de valor de sus presas.',
  img: 'assets/images/characters/vaunea/vaunea.jpg',
  profileImg: 'assets/images/characters/vaunea/vaunea_profile.jpg',
  banner: 'assets/images/characters/vaunea/vaunea_banner.jpeg',
  password: 'vaunea438',
);

CharacterModel evendurGreycastle = CharacterModel(
  id: 2,
  name: 'Evendur',
  lastName: 'Greycastle',
  level: 9,
  race: 'Humano (Tethyrian)',
  classes: ['Paladín (7)', 'Brujo (2)'],
  armor: 19,
  initiative: 0,
  speed: 6,
  passivePerception: 10,
  hitDice: d10,
  healthPoints: HealthPointsModel(current: 115, max: 115),
  abilities: [
    AbilityModel(name: 'Fuerza', score: 18, modifier: 4),
    AbilityModel(name: 'Destreza', score: 11, modifier: 0),
    AbilityModel(name: 'Constitución', score: 16, modifier: 3),
    AbilityModel(name: 'Inteligencia', score: 14, modifier: 2),
    AbilityModel(name: 'Sabiduría', score: 10, modifier: 0),
    AbilityModel(name: 'Carisma', score: 18, modifier: 4),
  ],
  savingThrows: [
    SavingThrowModel(name: 'Fuerza', modifier: 4, proficiency: false),
    SavingThrowModel(name: 'Destreza', modifier: 0, proficiency: false),
    SavingThrowModel(name: 'Constitucion', modifier: 3, proficiency: false),
    SavingThrowModel(name: 'Inteligencia', modifier: 2, proficiency: false),
    SavingThrowModel(name: 'Sabiduria', modifier: 3, proficiency: true),
    SavingThrowModel(name: 'Carisma', modifier: 7, proficiency: true),
  ],
  skills: [
    SkillModel(name: 'Acrobacias', modifier: 0, proficiency: false),
    SkillModel(name: 'Atletismo', modifier: 5, proficiency: true),
    SkillModel(name: 'Conoc. Arcano', modifier: 2, proficiency: false),
    SkillModel(name: 'Engaño', modifier: 4, proficiency: false),
    SkillModel(name: 'Historia', modifier: 2, proficiency: false),
    SkillModel(name: 'Interpretacion', modifier: 4, proficiency: false),
    SkillModel(name: 'Intimidación', modifier: 7, proficiency: true),
    SkillModel(name: 'Investigación', modifier: 2, proficiency: false),
    SkillModel(name: 'J. de Manos', modifier: 0, proficiency: false),
    SkillModel(name: 'Medicina', modifier: 0, proficiency: false),
    SkillModel(name: 'Naturaleza', modifier: 2, proficiency: false),
    SkillModel(name: 'Percepción', modifier: 0, proficiency: false),
    SkillModel(name: 'Perspicacia', modifier: 0, proficiency: false),
    SkillModel(name: 'Persuasion', modifier: 7, proficiency: true),
    SkillModel(name: 'Religión', modifier: 2, proficiency: true),
    SkillModel(name: 'Sigilo', modifier: 0, proficiency: false),
    SkillModel(name: 'Supervivencia', modifier: 0, proficiency: true),
    SkillModel(name: 'T. Animales', modifier: 0, proficiency: false),
  ],
  weapons: [oneHandedSword, twoHandedSword, axe],
  languages: 'Común, Enano',
  traits: [],
  spells: [
    frost,
    minorIllusion,
    command,
    cureWounds,
    ruin,
    punishmentOfThunder,
    icyRebuke,
    armorOfAgathys,
    invokeMount,
    mistyStep
  ],
  pets: [],
  wildForms: [],
  notes: [],
  wallet: WalletModel(
    copper: 0,
    silver: 0,
    electrum: 0,
    gold: 0,
    platinum: 0,
  ),
  background: [],
  backstory: '',
  img: 'assets/images/characters/evendur_greycastle/evendur_greycastle.jpeg',
  profileImg:
      'assets/images/characters/evendur_greycastle/evendur_greycastle_profile.jpeg',
  banner:
      'assets/images/characters/evendur_greycastle/evendur_greycastle_banner.jpeg',
  password: 'Bocha100',
);
