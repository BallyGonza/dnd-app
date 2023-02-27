import 'package:dnd_app/data/data.dart';

class Character {
  final int id;
  final String name;
  final String lastName;
  final String img;
  final String profileImg;
  final String banner;
  final String race;
  final List<String> classes;
  final int level;
  final int armor;
  final int initiative;
  final int speed;
  final int passivePerception;
  final Dice hitDice;
  HealthPoints healthPoints;
  final List<Ability> abilities;
  final List<Skill> allSkills;
  final List<Skill> skills1;
  final List<Skill> skills2;
  final List<SavingThrow> savingThrows;
  final List<Weapon> weapons;
  final String languages;
  final List<Trait> traits;
  final List<Spell> spells;
  final List<Background> background;
  final List<String> backstory;
  final List<Pet> pet;
  final String favoredEnemy;
  final String favoredTerrain;

  Character({
    required this.id,
    required this.name,
    required this.lastName,
    required this.img,
    required this.profileImg,
    required this.banner,
    required this.race,
    required this.classes,
    required this.level,
    required this.armor,
    required this.initiative,
    required this.speed,
    required this.passivePerception,
    required this.hitDice,
    required this.healthPoints,
    required this.abilities,
    required this.allSkills,
    required this.skills1,
    required this.skills2,
    required this.savingThrows,
    required this.weapons,
    required this.languages,
    required this.traits,
    required this.spells,
    required this.background,
    required this.backstory,
    required this.pet,
    required this.favoredEnemy,
    required this.favoredTerrain,
  });
}

Character theekVarus = Character(
  id: 1,
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
    Ability(name: 'Strength', score: 8, modifier: -1),
    Ability(name: 'Dexterity', score: 18, modifier: 4),
    Ability(name: 'Constitution', score: 17, modifier: 3),
    Ability(name: 'Intelligence', score: 15, modifier: 2),
    Ability(name: 'Wisdom', score: 20, modifier: 5),
    Ability(name: 'Charisma', score: 8, modifier: -1),
  ],
  allSkills: [
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
  skills1: [
    Skill(name: 'Acrobatics', modifier: 4, proficiency: false),
    Skill(name: 'Animal Handling', modifier: 9, proficiency: true),
    Skill(name: 'Arcana', modifier: 2, proficiency: false),
    Skill(name: 'Athletics', modifier: -1, proficiency: false),
    Skill(name: 'Deception', modifier: -1, proficiency: false),
    Skill(name: 'History', modifier: 2, proficiency: false),
    Skill(name: 'Insight', modifier: -1, proficiency: false),
    Skill(name: 'Intimidation', modifier: -1, proficiency: false),
    Skill(name: 'Investigation', modifier: 6, proficiency: true),
  ],
  skills2: [
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
    rainOfSpikes,
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
            'Siente un llamado natural a explorar nuevos y desconocidos lugares.'),
    Background(
        name: 'Ideals',
        description:
            'La vida, asi como las estaciones, están en constante cambio, y lo natural es aceptar y adaptarse a estos cambios.'),
    Background(
        name: 'Bonds',
        description:
            'Siente una union particular con la tierra de sus ancestros, confía en que de allí proviene su verdadera esencia.'),
    Background(name: 'Flaws', description: 'Obstinado en cambiar de opinion.'),
  ],
  backstory: [
    'Nacido en una aldea cercana a la ciudad de Nervalis, en la república de Temna Sul ubicada en el continente de Kuhana, Theek Varus se crió escuchando las historias sobre sus ancestros cazadores provenientes de Nezjassil, las tierras élficas ubicadas en el lejano continente de Faudun Ur.',
    'Su familia lo entrenó en el arte de la caza con arco y flecha y le impartieron sus conocimientos sobre exploración.',
    'Como es costumbre en su tribu, a la edad de 16 años se le encomendó cazar, capturar y matar una presa peligrosa, para alcanzar oficialmente la adultez.',
    'Luego de pasar semanas solo en los bosques, logró dar con las huellas de su objetivo y seguirle la pista hasta su cueva, sin embargo al ver que su presa había dado a luz pocos días atrás, Theek se encontró ante la diferencia entre cazar para alimentarse y cazar para obtener un trofeo. Al cabo de unos días regresó a su aldea con las manos vacías, orgulloso de su decisión.',
    'Sin embargo, su familia no aceptó sus planteos y le dieron dos opciones: Seguir la tradición o ser desterrado.',
    'Inamovible en su decisión y su orgullo, Theek Varus se retiró de su aldea sin mirar atrás.',
    'Habitó durante años en los bosques, cazando sólo lo necesario para sobrevivir y puliendo sus habilidades con el arco.',
    'Sabiendo que, debido a la distancia le resultaba imposible visitar ese lugar, siempre se preguntó si los elfos de las tierras de Nezjassil compartirían o no sus ideales.',
    'Con el paso del tiempo su camino lo llevó a los bosques cercanos a la ciudad de Raienar, que limitan al Oeste con la república de Kandra Sul y al norte con la República Imperial de Lessyria.',
    'Fue en estos bosques donde, siguiendo unas misteriosas huellas, conoció a Vaunea, de la raza Goliath, desconocida hasta ese momento para Theek y vio en ella capacidades para la caza.',
    'Al comienzo Vaunea parecía rechazarlo por el simple hecho de ser un elfo, pero ante la insistencia de Theek y la revelación de que él mismo había abandonado a su propia raza, comenzaron a viajar juntos en busca de nuevas oportunidades.',
    'Característica: Tiene una gran capacidad para reconocer y memorizar la disposición general de un terreno. Asimismo, estando en terreno fértil, le resulta fácil encontrar agua y alimentos para él y hasta cinco personas más cada día.',
  ],
  pet: [ghost],
  favoredEnemy: 'Beasts and Dragons',
  favoredTerrain: 'Woods and Mountains',
);

final defaultCharacters = <Character>[theekVarus];
