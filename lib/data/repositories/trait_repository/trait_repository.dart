import 'package:dnd_app/data/data.dart';

Trait darkVision = Trait(
  name: 'Vision en la oscuridad',
  description:
      'Puedes ver en luz tenue dentro de un radio de 60 pies como si fuera luz brillante, y en la oscuridad como si fuera luz tenue. No puedes distinguir los colores en la oscuridad, solo tonos de gris.',
);

Trait feyAncestry = Trait(
  name: 'Ancestros Fey',
  description:
      'Te da ventaja en tiradas de salvación contra efectos que intenten encantar tu mente y te hace inmune a hechizos que intenten ponerte a dormir.',
);

Trait wildMask = Trait(
  name: 'Máscara Salvaje',
  description:
      'Puedes usar la acción hide usando fenómenos naturales como cobertura (arbustos, foliage, lluvia pesada, niebla, etc.).',
);

Trait favoredEnemy = Trait(
  name: 'Enemigo Favorecido',
  description:
      'Tienes ventaja en chequeos de supervivencia para intentar buscar rastros de estas criaturas y ventaja en chequeos de inteligencia relacionados a información sobre estas criaturas.\n\n[Beasts and Dragons]',
);

Trait naturalHealing = Trait(
  name: 'Curación Natural',
  description:
      'Durante un descanso corto, si usas tus dados de golpe para recuperar puntos de vida, podes re-rollear cualquier 1 o 2 un máximo de 4 rolleos.',
);

Trait favoredTerrain = Trait(
    name: 'Terreno Favorecido',
    description:
        'Al realizar un chequeo de investigación, percepción o supervivencia que este relacionado a estos terrenos, usas el doble de tu modificador.\nA su vez, al viajar durante una hora o mas durante estos terrenos, obtienes los siguientes beneficios:\n\n ~Aun si es terreno difícil, no disminuye el tiempo de viaje de tu grupo. \n\n ~Tu grupo no se puede perder excepto a causa de efectos mágicos.\n\n ~Permaneces alerta a tus alrededores aun si estas realizando tareas como juntar comida o rastreando huellas.\n\n ~Si estas viajando solo, podes moverte sigilosamente aun yendo a velocidad normal.\n\n ~Al buscar comida en estos terrenos, obtienes el doble de lo que normalmente obtendrías.\n\n ~Al rastrear criaturas, podes identificar su tamaño, cantidad aproximada y hace cuanto tiempo pasaron por esa zona.\n\n[Woods and Mountains]');

Trait primalInstinct = Trait(
    name: 'Instinto Primal',
    description:
        'Hasta 6 veces al dia, podes usar como una acción tu alerta primal.\n\nRevela en 1km a la redonda o 6km en tu terreno favorecido la presencia de criaturas:\n\n~ Celestiales\n~ Aberraciones\n~ Dragones\n~ Elementales\n~ Feys\n~ Abismales\n~ No-muertos\n\nEsta habilidad no revela su ubicación ni su cantidad, solo su presencia.');

Trait stealthyHunter = Trait(
  name: 'Cazador Sigiloso',
  description:
      'Podes usar tu acción hide como una acción bonus.\n\nAdicionalmente, si estabas escondido al comienzo de un combate, tus ataques no revelan tu posición durante la primer ronda de ese combate siempre y cuando permanezcas bajo las mismas condiciones en las que te escondiste.',
);

Trait teleport = Trait(
  name: 'Teletransporte',
  description:
      'Puede transportarse hasta 8mts de distancia junto a cualquier objeto que este llevando.\n\nAntes o después de transportarse, puede usar una Mordida como parte de la acción.',
);
