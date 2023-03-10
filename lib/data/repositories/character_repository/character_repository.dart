import 'package:dnd_app/data/data.dart';

class CharacterRepository {
  CharacterRepository();

  Future<List<Character>> getCharacters() async {
    return defaultCharacters;
  }

  Future<Character> getCharacter(int id) async {
    return defaultCharacters.firstWhere((element) => element.id == id);
  }
}

Character theekVarus = Character(
  id: 0,
  name: 'Theek',
  lastName: 'Varus',
  img: 'assets/images/characters/theek_varus/theek_varus.jpg',
  profileImg: 'assets/images/characters/theek_varus/theek_varus_profile.jpg',
  banner: 'assets/images/characters/theek_varus/theek_varus_banner.jpg',
  race: 'Wood Elf',
  classes: ['Ranger', 'Beastmaster'],
  level: 9,
  armor: 17,
  initiative: 4,
  speed: 7,
  passivePerception: 19,
  hitDice: d10,
  healthPoints: HealthPoints(current: 84, max: 84),
  abilities: [
    Ability(
      name: 'Fuerza',
      score: 8,
      modifier: -1,
    ),
    Ability(
      name: 'Destreza',
      score: 18,
      modifier: 4,
    ),
    Ability(
      name: 'Constitución',
      score: 17,
      modifier: 3,
    ),
    Ability(
      name: 'Inteligencia',
      score: 15,
      modifier: 2,
    ),
    Ability(
      name: 'Sabiduría',
      score: 20,
      modifier: 5,
    ),
    Ability(
      name: 'Carisma',
      score: 8,
      modifier: -1,
    ),
  ],
  skills: [
    Skill(
      name: 'Acrobacias',
      modifier: 4,
      proficiency: false,
    ),
    Skill(
      name: 'Manejo de Animales',
      modifier: 9,
      proficiency: true,
    ),
    Skill(
      name: 'Arcanismo',
      modifier: 2,
      proficiency: false,
    ),
    Skill(
      name: 'Atletismo',
      modifier: -1,
      proficiency: false,
    ),
    Skill(
      name: 'Engaño',
      modifier: -1,
      proficiency: false,
    ),
    Skill(
      name: 'Historia',
      modifier: 2,
      proficiency: false,
    ),
    Skill(
      name: 'Perspicacia',
      modifier: -1,
      proficiency: false,
    ),
    Skill(
      name: 'Intimidación',
      modifier: -1,
      proficiency: false,
    ),
    Skill(
      name: 'Investigación',
      modifier: 6,
      proficiency: true,
    ),
    Skill(
      name: 'Medicina',
      modifier: 5,
      proficiency: false,
    ),
    Skill(
      name: 'Naturaleza',
      modifier: 2,
      proficiency: false,
    ),
    Skill(
      name: 'Percepción',
      modifier: 9,
      proficiency: true,
    ),
    Skill(
      name: 'Performance',
      modifier: 5,
      proficiency: false,
    ),
    Skill(
      name: 'Persuasion',
      modifier: -1,
      proficiency: false,
    ),
    Skill(
      name: 'Religión',
      modifier: 2,
      proficiency: false,
    ),
    Skill(
      name: 'Juego de Manos',
      modifier: 4,
      proficiency: false,
    ),
    Skill(
      name: 'Sigilo',
      modifier: 8,
      proficiency: true,
    ),
    Skill(
      name: 'Supervivencia',
      modifier: 5,
      proficiency: false,
    ),
  ],
  savingThrows: [
    SavingThrow(name: 'Fuerza', modifier: 3, proficiency: true),
    SavingThrow(name: 'Destreza', modifier: 8, proficiency: true),
    SavingThrow(name: 'Constitucion', modifier: 3, proficiency: false),
    SavingThrow(name: 'Inteligencia', modifier: 2, proficiency: false),
    SavingThrow(name: 'Sabiduria', modifier: 5, proficiency: false),
    SavingThrow(name: 'Carisma', modifier: -1, proficiency: false),
  ],
  weapons: [longBow, rapier, dagger],
  languages: 'Común, Elfíco y Draconico',
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
  background: [
    Background(
      name: 'Rasgos de Personalidad',
      description:
          'Siente un llamado natural a explorar nuevos y desconocidos lugares.',
    ),
    Background(
      name: 'Ideales',
      description:
          'La vida, asi como las estaciones, están en constante cambio, y lo natural es aceptar y adaptarse a estos cambios.',
    ),
    Background(
      name: 'Vínculos',
      description:
          'Siente una union particular con la tierra de sus ancestros, confía en que de allí proviene su verdadera esencia.',
    ),
    Background(
      name: 'Defectos',
      description: 'Obstinado en cambiar de opinion.',
    ),
  ],
  backstory:
      'Nacido en una aldea cercana a la ciudad de Nervalis, en la república de Temna Sul ubicada en el continente de Kuhana, Theek Varus se crió escuchando las historias sobre sus ancestros cazadores provenientes de Nezjassil, las tierras élficas ubicadas en el lejano continente de Faudun Ur.\n\nSu familia lo entrenó en el arte de la caza con arco y flecha y le impartieron sus conocimientos sobre exploración.\n\nComo es costumbre en su tribu, a la edad de 16 años se le encomendó cazar, capturar y matar una presa peligrosa, para alcanzar oficialmente la adultez.\n\nLuego de pasar semanas solo en los bosques, logró dar con las huellas de su objetivo y seguirle la pista hasta su cueva, sin embargo al ver que su presa había dado a luz pocos días atrás, Theek se encontró ante la diferencia entre cazar para alimentarse y cazar para obtener un trofeo. Al cabo de unos días regresó a su aldea con las manos vacías, orgulloso de su decisión.\n\nSin embargo, su familia no aceptó sus planteos y le dieron dos opciones: Seguir la tradición o ser desterrado.\n\nInamovible en su decisión y su orgullo, Theek Varus se retiró de su aldea sin mirar atrás.\n\nHabitó durante años en los bosques, cazando sólo lo necesario para sobrevivir y puliendo sus habilidades con el arco.\n\nSabiendo que, debido a la distancia le resultaba imposible visitar ese lugar, siempre se preguntó si los elfos de las tierras de Nezjassil compartirían o no sus ideales.\n\nCon el paso del tiempo su camino lo llevó a los bosques cercanos a la ciudad de Raienar, que limitan al Oeste con la república de Kandra Sul y al norte con la República Imperial de Lessyria.\n\nFue en estos bosques donde, siguiendo unas misteriosas huellas, conoció a Vaunea, de la raza Goliath, desconocida hasta ese momento para Theek y vio en ella capacidades para la caza.\n\nAl comienzo Vaunea parecía rechazarlo por el simple hecho de ser un elfo, pero ante la insistencia de Theek y la revelación de que él mismo había abandonado a su propia raza, comenzaron a viajar juntos en busca de nuevas oportunidades.\n\nCaracterística: Tiene una gran capacidad para reconocer y memorizar la disposición general de un terreno. Asimismo, estando en terreno fértil, le resulta fácil encontrar agua y alimentos para él y hasta cinco personas más cada día.',
  pet: [ghost],
  notes: [],
  wallet: Wallet(
    copperPieces: 0,
    silverPieces: 0,
    electrumPieces: 0,
    goldPieces: 0,
    platinumPieces: 0,
  ),
);

Character calebClock = Character(
  id: 1,
  name: 'Caleb',
  lastName: 'Clock',
  img: 'assets/images/characters/caleb_clock/caleb_clock.png',
  profileImg: 'assets/images/characters/caleb_clock/caleb_clock_profile.png',
  banner: 'assets/images/characters/caleb_clock/caleb_clock_banner.png',
  race: 'Wood Elf',
  classes: ['Ranger', 'Beastmaster'],
  level: 9,
  armor: 17,
  initiative: 4,
  speed: 7,
  passivePerception: 19,
  hitDice: d10,
  healthPoints: HealthPoints(current: 84, max: 84),
  abilities: [
    Ability(name: 'Strength', score: 8, modifier: -1),
    Ability(name: 'Dexterity', score: 18, modifier: 4),
    Ability(name: 'Constitution', score: 17, modifier: 3),
    Ability(name: 'Intelligence', score: 15, modifier: 2),
    Ability(name: 'Wisdom', score: 20, modifier: 5),
    Ability(name: 'Charisma', score: 8, modifier: -1),
  ],
  skills: [
    Skill(name: 'Acrobatics', modifier: 4, proficiency: false),
    Skill(name: 'Animal Handling', modifier: 9, proficiency: true),
    Skill(name: 'Arcana', modifier: 2, proficiency: false),
    Skill(name: 'Athletics', modifier: -1, proficiency: false),
    Skill(name: 'Deception', modifier: -1, proficiency: false),
    Skill(name: 'History', modifier: 2, proficiency: false),
    Skill(name: 'Insight', modifier: -1, proficiency: false),
    Skill(name: 'Intimidation', modifier: -1, proficiency: false),
    Skill(name: 'Investigation', modifier: 6, proficiency: true),
    Skill(name: 'Medicine', modifier: 5, proficiency: false),
    Skill(name: 'Nature', modifier: 2, proficiency: false),
    Skill(name: 'Perception', modifier: 9, proficiency: true),
    Skill(name: 'Performance', modifier: 5, proficiency: false),
    Skill(name: 'Persuasion', modifier: -1, proficiency: false),
    Skill(name: 'Religion', modifier: 2, proficiency: false),
    Skill(name: 'Sleight of Hand', modifier: 4, proficiency: false),
    Skill(name: 'Stealth', modifier: 8, proficiency: true),
    Skill(name: 'Survival', modifier: 5, proficiency: false),
  ],
  savingThrows: [
    SavingThrow(name: 'Strength', modifier: 3, proficiency: true),
    SavingThrow(name: 'Dexterity', modifier: 8, proficiency: true),
    SavingThrow(name: 'Constitution', modifier: 3, proficiency: false),
    SavingThrow(name: 'Intelligence', modifier: 2, proficiency: false),
    SavingThrow(name: 'Wisdom', modifier: 5, proficiency: false),
    SavingThrow(name: 'Charisma', modifier: -1, proficiency: false),
  ],
  weapons: [longBow, rapier, dagger],
  languages: 'Common, Elvish and Draconic',
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
  background: [
    Background(
      name: 'Personality Trait',
      description:
          'Siente un llamado natural a explorar nuevos y desconocidos lugares.',
    ),
    Background(
      name: 'Ideals',
      description:
          'La vida, asi como las estaciones, están en constante cambio, y lo natural es aceptar y adaptarse a estos cambios.',
    ),
    Background(
      name: 'Bonds',
      description:
          'Siente una union particular con la tierra de sus ancestros, confía en que de allí proviene su verdadera esencia.',
    ),
    Background(
      name: 'Flaws',
      description: 'Obstinado en cambiar de opinion.',
    ),
  ],
  backstory:
      'Nacido en una aldea cercana a la ciudad de Nervalis, en la república de Temna Sul ubicada en el continente de Kuhana, Theek Varus se crió escuchando las historias sobre sus ancestros cazadores provenientes de Nezjassil, las tierras élficas ubicadas en el lejano continente de Faudun Ur.\n\nSu familia lo entrenó en el arte de la caza con arco y flecha y le impartieron sus conocimientos sobre exploración.\n\nComo es costumbre en su tribu, a la edad de 16 años se le encomendó cazar, capturar y matar una presa peligrosa, para alcanzar oficialmente la adultez.\n\nLuego de pasar semanas solo en los bosques, logró dar con las huellas de su objetivo y seguirle la pista hasta su cueva, sin embargo al ver que su presa había dado a luz pocos días atrás, Theek se encontró ante la diferencia entre cazar para alimentarse y cazar para obtener un trofeo. Al cabo de unos días regresó a su aldea con las manos vacías, orgulloso de su decisión.\n\nSin embargo, su familia no aceptó sus planteos y le dieron dos opciones: Seguir la tradición o ser desterrado.\n\nInamovible en su decisión y su orgullo, Theek Varus se retiró de su aldea sin mirar atrás.\n\nHabitó durante años en los bosques, cazando sólo lo necesario para sobrevivir y puliendo sus habilidades con el arco.\n\nSabiendo que, debido a la distancia le resultaba imposible visitar ese lugar, siempre se preguntó si los elfos de las tierras de Nezjassil compartirían o no sus ideales.\n\nCon el paso del tiempo su camino lo llevó a los bosques cercanos a la ciudad de Raienar, que limitan al Oeste con la república de Kandra Sul y al norte con la República Imperial de Lessyria.\n\nFue en estos bosques donde, siguiendo unas misteriosas huellas, conoció a Vaunea, de la raza Goliath, desconocida hasta ese momento para Theek y vio en ella capacidades para la caza.\n\nAl comienzo Vaunea parecía rechazarlo por el simple hecho de ser un elfo, pero ante la insistencia de Theek y la revelación de que él mismo había abandonado a su propia raza, comenzaron a viajar juntos en busca de nuevas oportunidades.\n\nCaracterística: Tiene una gran capacidad para reconocer y memorizar la disposición general de un terreno. Asimismo, estando en terreno fértil, le resulta fácil encontrar agua y alimentos para él y hasta cinco personas más cada día.',
  pet: [ghost],
  notes: [],
  wallet: Wallet(
    copperPieces: 0,
    silverPieces: 0,
    electrumPieces: 0,
    goldPieces: 0,
    platinumPieces: 0,
  ),
);

final List<Character> defaultCharacters = [theekVarus, calebClock];
