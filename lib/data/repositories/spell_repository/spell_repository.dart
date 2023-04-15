import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SpellRepository {
  SpellRepository();

  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');
}

List<SpellModel> defaultSpells = [
  speakWithAnimals,
  stormOfSpikes,
  huntersMark,
  spiritOfHealing,
  animalFriendship,
  animalSense,
  revive,
  elementalWeapon,
  druidcraft,
  repair,
  cureWounds,
  mistyStep,
  invokeMount,
  icyRebuke,
  armorOfAgathys,
  command,
  frost,
  minorIllusion,
  ruin,
  punishmentOfThunder,
];

SpellModel speakWithAnimals = SpellModel(
  name: 'Hablar con Animales',
  level: 'Nivel 1',
  range: 'Propio',
  castTime: '1 acción (R)',
  duration: '10 min',
  comp: 'V, S',
  description:
      'Limitado por la inteligencia de la bestia objetivo, puedes entenderla y hablar con ella.\n\nPuede comunicarte lo que haya experimentado durante el dia, asi como informarte sobre lugares o criaturas de la zona.\n\nEn ocasiones, si logras convencerla, la bestia podría incluso realizar alguna tarea simple a pedido tuyo.',
);

SpellModel stormOfSpikes = SpellModel(
  name: 'Tormenta de Espinas',
  level: 'Nivel 1',
  range: 'Propio',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 min)',
  comp: 'V',
  description:
      'El proximo ataque a distancia que logres conectar, ademas de los efectos normales del ataque, obliga al objetivo y a las criaturas en 1 metro alrededor de ella, a realizar una tirada de salvación de Destreza.\n\nSi fallan, reciben 1d10 de daño de penetración o la mitad si la logran.\n\nA niveles mas altos, causa 1d10 de daño adicional por cada nivel extra encima del nivel 1, hasta un máximo de 6d10.',
);

SpellModel huntersMark = SpellModel(
  name: 'Marca del Cazador',
  level: 'Nivel 1',
  range: '18 metros',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 hora)',
  comp: 'V',
  description:
      'Eliges a una criatura que puedas ver dentro del alcance y la marcas de forma mística como tu presa. Cada vez que la golpees con un ataque de arma, recibe 1d6 de daño adicional.\n\nTienes ventaja en chequeos de Percepción o Supervivencia para encontrar a esa criatura.\n\nSi los puntos de vida del objetivo se reducen a 0 antes de que el hechizo termine, puedes usar una acción bonus para trasladar la marca a otra criatura.\n\nA niveles mas altos, puedes mantener la concentración por 8 horas (nivel 3 o 4) o por 24 horas (nivel 5 o superior).',
);

SpellModel spiritOfHealing = SpellModel(
  name: 'Espíritu de Sanación',
  level: 'Nivel 2',
  range: '12 metros',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 min)',
  comp: 'V, S',
  description:
      'Llamas a un espíritu de la naturaleza que asiste a los heridos. La criatura aparece en un area de 1mt3 con apariencia de una Bestia o un Fey.\n\nHasta que el hechizo termine, cuando cualquier criatura pase por el area, por primera vez en su turno o al comienzo del mismo, puedes hacer que recupere 1d6 de puntos de vida (no requiere una acción).\n\nEl espíritu no puede curar no-muertos ni maquinas.\n\nComo acción bonus, puedes mover el espíritu hasta 6mts a un area que puedas ver.\n\nA niveles mas altos, la curación aumenta de 1d6 por cada nivel extra por encima del nivel 2.',
);

SpellModel animalSense = SpellModel(
  name: 'Sentido Animal (R)',
  level: 'Nivel 2',
  range: 'Toque',
  castTime: '1 acción',
  duration: 'Conc. (1 hora)',
  comp: 'S',
  description:
      'Tocas una bestia aliada. Mientras dure el hechizo puedes usar tu acción para ver y oir a traves de los sentidos de la bestia hasta que uses una acción para volver a tus sentidos.',
);

SpellModel revive = SpellModel(
  name: 'Revivificar',
  level: 'Nivel 3',
  range: 'Toque',
  castTime: '1 acción',
  duration: 'Instantáneo',
  comp: 'V, S, M, (Diamante de 300g)*',
  description:
      'Tocas a una criatura que haya estado muerta por menos de un minuto.\n\nLa criatura vuelve a la vida con 1 punto de vida.\n\nEste hechizo no puede revivir a criaturas que hayan muerto por vejez, ni tampoco restaura partes del cuerpo perdidas.\n\nSi la criatura no posee partes del cuerpo u órganos necesarios para vivir (por ejemplo, su cabeza) el hechizo falla.',
);

SpellModel elementalWeapon = SpellModel(
  name: 'Arma Elemental',
  level: 'Nivel 3',
  range: 'Toque',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 hora)',
  comp: 'V, S',
  description:
      'Elige uno de los siguientes tipos de daño: Ácido, Hielo, Fuego, Eléctrico o Trueno.\n\nMientras dure el hechizo, conviertes un arma no-mágica, en un arma mágica con +1 de bonus en chequeos de ataque y 1d4 de daño adicional del tipo seleccionado.\n\nSi usas este hechizo a nivel 5 o 6, el bonus en chequeos de ataque aumenta a +2 y el daño extra a 2d4.\n\nSi usas este hechizo a nivel 7 o superior, el bonus en chequeos de ataque aumenta a +3 y el daño extra a 3d4.',
);

SpellModel druidcraft = SpellModel(
  name: 'Druidcraft',
  level: 'Cantrip',
  range: '6 metros',
  castTime: '1 acción',
  duration: 'Instantáneo',
  comp: 'V, S',
  description:
      'Crea una de los siguientes efectos:\n\n- Un efecto sensorial que predice el clima aproximado del área en las próximas 24 horas.\n\n- Hacer florecer instantáneamente el capullo de una flor.\n\n- Apagar o prender la llama de una vela, antorcha o una pequeña fogata.\n\n- Crear un efecto sensorial natural no-dañino, como hojas cayendo, una corriente de viento, o sonidos de animales pequeños.\n\nEl efecto no puede exceder un area de 1mt3.',
);

SpellModel repair = SpellModel(
  name: 'Reparar',
  level: 'Cantrip',
  range: 'Toque',
  castTime: '1 minuto',
  duration: 'Instantáneo',
  comp: 'V, S, M (piedra imantada)',
  description:
      'Repara un objeto que toques, como una cadena rota, una llave partida en dos o una rasgadura en una tela. La rotura no puede ser superior a 30cm. La reparación causada por el hechizo no deja rastros del daño reparado.\n\nEste hechizo puede reparar objetos mágicos, pero no puede devolverles la magia imbuida en ellos en caso de haberla perdido.',
);

SpellModel animalFriendship = SpellModel(
  name: 'Amistad Animal',
  level: 'Nivel 1',
  range: '6 metros',
  castTime: '1 acción',
  duration: '24 horas',
  comp: 'V, S, M (algún alimento)',
  description:
      'Este hechizo te permite persuadir a una bestia de que no eres una amenaza y establecer una conexión amistosa con ella. Elige una bestia que puedas ver dentro del rango. La bestia debe ser capaz de verte y oírte. Si la inteligencia de la bestia es 4 o superior, el hechizo falla. De lo contrario, la bestia realiza una tirada de salvación de Sabiduría, si falla queda encantada por ti mientras dure el hechizo.\n\nDurante la duración del hechizo, la bestia será amistosa contigo y no te atacará a menos que se sienta amenazada o provocada. También puedes comunicarte con la bestia telepáticamente y persuadirla para que realice tareas simples y no peligrosas para ella.\n\nSi tú o uno de tus aliados daña a la bestia, el hechizo termina de inmediato. A niveles más altos, puedes elegir una criatura extra como objetivo por cada nivel extra por encima del nivel 1.',
);

SpellModel frost = SpellModel(
  name: 'Helada',
  level: 'Cantrip',
  range: '12 metros',
  castTime: '1 acción',
  duration: 'Instantáneo',
  comp: 'V, S',
  description:
      'Invocas un frío entumecedor alrededor de un objetivo. La criatura realiza una tirada de salvación de Constitución.\n\nSi falla, recibe 1d6 de daño por frío y tiene desventaja en su próximo ataque con armas antes del final de su próximo turno.\n\nEl daño de este hechizo aumenta en 1d6 a los niveles 5, 11 y 17 del usuario.',
);

SpellModel minorIllusion = SpellModel(
  name: 'Ilusión Menor',
  level: 'Cantrip',
  range: '12 metros',
  castTime: '1 acción',
  duration: '1 minuto',
  comp: 'S, M (hebra de lana)',
  description:
      'Creas un sonido o una imagen de un objeto que no mida más de 1 metro. La ilusión termina antes si vuelves a usar este hechizo o si lo cancelas usando una acción.\n\nSi creas un sonido, puedes variar su volumen y hacer que sea continuo o por intervalos. También puedes modificar el sonido a medida que lo desees.\n\nUna criatura puede usar una acción para examinar la ilusión realizando un chequeo de Investigación contra tu dificultad de lanzamiento de hechizos. Si la criatura logra discernir la ilusión, podrá ver a través de ella.',
);

SpellModel command = SpellModel(
  name: 'Comando',
  level: 'Nivel 1',
  range: '12 metros',
  castTime: '1 acción',
  duration: '1 ronda',
  comp: 'V',
  description:
      'Exclamas un comando de una o dos palabras a una criatura que elijas. La criatura realiza una tirada de salvación de Sabiduría.\n\nSi falla, obedece tu comando. El hechizo falla si la criatura es un no-muerto, si no entiende tu idioma, si tu comando le causaría daño directo o si no tiene manera de obedecerlo.\n\nA niveles más altos, puedes afectar a una criatura adicional por cada nivel extra por encima del nivel 1. Las criaturas deben estar a menos de 6 metros de distancia entre ellas.',
);

SpellModel cureWounds = SpellModel(
  name: 'Curar Heridas',
  level: 'Nivel 1',
  range: 'Toque',
  castTime: '1 acción',
  duration: 'Instantáneo',
  comp: 'V, S',
  description:
      'Una criatura que toques recupera puntos de vida igual a 1d8 más tu modificador de hechizos.\n\nEste hechizo no funciona en no-muertos o en máquinas.\n\nA niveles más altos, la cantidad de puntos de vida recuperados aumenta en 1d8 por cada nivel extra por encima del nivel 1.',
);

SpellModel ruin = SpellModel(
  name: 'Perdición',
  level: 'Nivel 1',
  range: '6 metros',
  castTime: '1 acción',
  duration: 'Conc. (1 min)',
  comp: 'V, S, M (sangre)',
  description:
      'Hasta 3 criaturas que puedas ver realizan una tirada de salvación de Carisma.\n\nSi un objetivo falla, cada vez que realice un chequeo de ataque o una tirada de salvación, debe lanzar 1d4 y restar el número obtenido al resultado.\n\nA niveles más altos, puedes afectar a una criatura adicional por cada nivel extra por encima del nivel 1.',
);

SpellModel punishmentOfThunder = SpellModel(
  name: 'Castigo del Trueno',
  level: 'Nivel 1',
  range: 'Propio',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 min)',
  comp: 'V',
  description:
      'La primera vez que golpees a un objetivo con un ataque cuerpo a cuerpo durante la duración de este hechizo, tu arma emite un estruendo audible hasta a 60 metros de distancia y el ataque causa 2d6 puntos de daño por trueno adicionales.\n\nSi el objetivo es una criatura, debe realizar una tirada de salvación de Fuerza. Si falla, es empujada 2 metros hacia atrás y cae al suelo.',
);

SpellModel icyRebuke = SpellModel(
  name: 'Reprensión Helada',
  level: 'Nivel 1',
  range: '12 metros',
  castTime: '1 reacción',
  duration: 'Instantáneo',
  comp: 'V, S',
  description:
      'Una criatura que te haya causado daño realiza una tirada de salvación de Destreza. Si falla, recibe 2d10 puntos de daño por frío o la mitad del daño si logra la tirada.\n\nA niveles más altos, el hechizo causa 1d10 puntos de daño adicionales por cada nivel extra por encima del nivel 1.',
);

SpellModel armorOfAgathys = SpellModel(
  name: 'Armadura de Agathys',
  level: 'Nivel 1',
  range: 'Toque',
  castTime: '1 acción',
  duration: '1 hora',
  comp: 'V, S, M (agua)',
  description:
      'Una fuerza mágica te rodea manifestándose en forma de hielo espectral alrededor de tu cuerpo y tu armadura. Obtienes 5 puntos de vida temporales mientras dure el hechizo.\n\nSi una criatura te daña con un ataque cuerpo a cuerpo mientras tienes esos puntos de vida adicionales, la criatura recibe 5 puntos de daño por frío.\n\nA niveles más altos, la cantidad de vida adicional y el daño causado aumentan en 5 puntos por cada nivel extra por encima del nivel 1.',
);

SpellModel invokeMount = SpellModel(
  name: 'Invocar Montura',
  level: 'Nivel 2',
  range: '6 metros',
  castTime: '10 minutos',
  duration: 'Instantáneo',
  comp: 'V, S',
  description:
      'Invocas una montura mágica y creas una unión mental con ella.\n\nPuede tomar la forma de un caballo de guerra, un camello, un pony, un alce o un mastín (pueden seleccionarse otras monturas a discreción del DM).\n\nLa montura tiene las estadísticas de la criatura elegida, pero se la considera celestial, feérica o abismal.\n\nSi su inteligencia es 5 o menos, pasa a ser 6 y aprende a entender uno de tus idiomas.\n\nMientras esté a menos de 500 metros de ti, puedes comunicarte telepáticamente con tu montura.\n\nLa montura puede ser usada tanto dentro como fuera del combate y la unión contigo es tan profunda e instintiva que cualquier hechizo que uses cuyo objetivo seas tú mismo también afecta a tu montura.\n\nSi sus puntos de vida llegan a cero, desaparece. Puedes usar una reacción para hacerla desaparecer o para terminar la unión y hacerla desaparecer.',
);

SpellModel mistyStep = SpellModel(
  name: 'Paso de la Niebla',
  level: 'Nivel Nivel 2',
  range: 'Propio',
  castTime: '1 acción bonus',
  duration: 'Instantáneo',
  comp: 'V',
  description:
      'Una niebla mágica te rodea brevemente.\n\nTe teletransportas hasta 6 metros a un lugar desocupado que puedas ver.',
);
