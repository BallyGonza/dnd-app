// ignore_for_file: lines_longer_than_80_chars

import 'package:dnd_app/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TraitRepository {
  TraitRepository();

  final Box<CharacterModel> box = Hive.box<CharacterModel>('characters_box');
}

TraitModel darkVision = TraitModel(
  name: 'Vision en la oscuridad',
  description:
      'Tienes la capacidad de ver en condiciones de luz tenue en un radio de 18 metros como si fuera luz brillante y en la oscuridad como si fuera luz tenue. Sin embargo, en la oscuridad no puedes distinguir los colores y solo puedes ver tonos de gris.',
);

TraitModel feyAncestry = TraitModel(
  name: 'Ancestros Fey',
  description:
      'Este efecto te brinda una ventaja significativa en las tiradas de salvación contra cualquier intento de encantamiento que busque afectar tu mente. Además, te otorga inmunidad total a los hechizos que buscan inducirte al sueño, lo que significa que no podrán afectarte de ninguna manera.',
);

TraitModel wildMask = TraitModel(
  name: 'Máscara Salvaje',
  description:
      'Puedes usar la acción de Esconderse usando fenómenos naturales como cobertura (arbustos, follaje, lluvia pesada, niebla, etc.).',
);

TraitModel favoredEnemy = TraitModel(
  name: 'Enemigo Favorecido',
  description: '''
Tienes ventaja en chequeos de Supervivencia para intentar buscar rastros de estas criaturas, y ventaja en chequeos de Inteligencia relacionados con información sobre estas criaturas.
      
      [Bestias y Dragones]''',
);

TraitModel naturalHealing = TraitModel(
  name: 'Curación Natural',
  description:
      'Durante un descanso corto, si usas tus dados de golpe disponibles para recuperar puntos de vida, puedes volver a tirar cualquier 1 o 2 un máximo de cuatro veces.',
);

TraitModel favoredTerrain = TraitModel(
  name: 'Terreno Favorecido',
  description:
      'Al realizar un chequeo de Investigación, Percepción o Supervivencia que esté relacionado con estos terrenos, usas el doble de tu modificador.\n\nA su vez, al viajar durante una hora o más por estos terrenos, obtienes los siguientes beneficios:\n\n- Aunque sea terreno difícil, no disminuye el tiempo de viaje de tu grupo.\n\n- Tu grupo no se puede perder excepto por efectos mágicos.\n\n- Permaneces alerta a tus alrededores aunque estés realizando tareas como juntar comida o rastrear huellas.\n\n- Si viajas solo, puedes moverte sigilosamente a velocidad normal.\n\n- Al buscar comida en estos terrenos, obtienes el doble de lo que normalmente obtendrías.\n\n- Al rastrear criaturas, puedes identificar su tamaño, cantidad aproximada y hace cuánto tiempo pasaron por esa zona.\n\n[Woods and Mountains]',
);

TraitModel primalInstinct = TraitModel(
  name: 'Instinto Primal',
  description:
      'Hasta 6 veces al dia, podes usar como una acción tu alerta primal.\n\nRevela en 1km a la redonda o 6km en tu terreno favorecido la presencia de criaturas:\n\n-> Celestiales\n-> Aberraciones\n-> Dragones\n-> Elementales\n-> Feys\n-> Abismales\n-> No-muertos\n\nEsta habilidad no revela su ubicación ni su cantidad, solo su presencia.',
);

TraitModel stealthyHunter = TraitModel(
  name: 'Cazador Sigiloso',
  description:
      'Puedes usar la acción de Esconderse como una acción bonus.\n\nAdemás, si estabas escondido al comienzo de un combate, los ataques que realices no revelan tu posición durante la primera ronda de ese combate, siempre y cuando permanezcas bajo las mismas condiciones en las que te escondiste.',
);

TraitModel teleport = TraitModel(
  name: 'Teletransporte',
  description:
      'Puede transportarse hasta 8mts de distancia junto a cualquier objeto que este llevando.\n\nAntes o después de transportarse, puede usar una Mordida como parte de la acción.',
);

TraitModel multiAttack = TraitModel(
  name: 'Multiataque',
  description:
      'Puedes realizar dos ataques en un solo turno, uno con tu mordida y otro con tus garras.',
);

TraitModel acuteSmell = TraitModel(
  name: 'Olfato Agudo',
  description:
      'Tienes ventaja en los chequeos de Percepción que involucren el sentido del olfato.',
);

TraitModel rockResistance = TraitModel(
  name: 'Resistencia de la Roca',
  description:
      'Una vez por día, cuando recibes daño, puedes reducirlo en 1d12 + tu modificador de Constitución.',
);

TraitModel bornFromMountains = TraitModel(
  name: 'Nacido de las Montañas',
  description:
      'No te fatigas ni te agotas mientras estás en terreno montañoso. Además, el clima no te afecta.',
);

TraitModel senseDanger = TraitModel(
  name: 'Presentir Peligro',
  description:
      'Si debes hacer una tirada de salvación de Destreza por alguna trampa o hechizo, tienes ventaja en esa tirada.',
);

TraitModel carelessAttack = TraitModel(
  name: 'Ataque Descuidado',
  description:
      'Durante tu turno, puedes atacar con ventaja, pero durante toda la ronda los enemigos también pueden atacarte con ventaja.',
);

TraitModel bearTotem = TraitModel(
  name: 'Tótem del Oso',
  description: 'Reducción de daño',
);

TraitModel viewOfTheEagle = TraitModel(
  name: 'Vista del Águila',
  description:
      'Puedes ver a 1.5km de distancia sin necesidad de usar tus sentidos.',
);

TraitModel wildAttacks = TraitModel(
  name: 'Ataques Salvajes',
  description:
      'Cuando realizas un ataque con un arma cuerpo a cuerpo o a distancia, puedes volver a tirar el dado de daño más bajo y usar el resultado más alto. Solo puedes usar esta habilidad una vez por turno.',
);

TraitModel wildForm = TraitModel(
  name: 'Forma Salvaje',
  description:
      'Como acción bonus, puedes transformarte en una bestia durante un número de horas igual a la mitad de tu nivel de druida (redondeado hacia abajo). La transformación termina si usas otra acción bonus para cancelarla, si tus puntos de vida (en esta nueva forma) se reducen a cero o si se acaba el tiempo. Puedes usar esta habilidad dos veces por día. Recuperas los usos después de un descanso corto.',
);
