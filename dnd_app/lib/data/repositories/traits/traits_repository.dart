import 'package:dnd_app/data/data.dart';

Trait darkVision = Trait(
  name: 'Darkvision',
  description: [
    'You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.',
  ],
);

Trait feyAncestry = Trait(
  name: 'Fey Ancestry',
  description: [
    'Te da ventaja en tiradas de salvación contra efectos que intenten encantar tu mente y te hace inmune a hechizos que intenten ponerte a dormir.',
  ],
);

Trait wildMask = Trait(
  name: 'Wild Mask',
  description: [
    'Puedes usar la acción hide usando fenómenos naturales como cobertura (arbustos, foliage, lluvia pesada, niebla, etc.).',
  ],
);

Trait favoredEnemy = Trait(
  name: 'Favored Enemy',
  description: [
    'Tienes ventaja en chequeos de supervivencia para intentar buscar rastros de estas criaturas y ventaja en chequeos de inteligencia relacionados a información sobre estas criaturas.',
  ],
);

Trait naturalHealing = Trait(
  name: 'Natural Healing',
  description: [
    'Durante un descanso corto, si usas tus dados de golpe para recuperar puntos de vida, podes re-rollear cualquier 1 o 2 un máximo de 4 rolleos.',
  ],
);

Trait favoredTerrain = Trait(
  name: 'Favored Terrain',
  description: [
    'Al realizar un chequeo de investigación, percepción o supervivencia que este relacionado a estos terrenos, usas el doble de tu modificador.',
    'A su vez, al viajar durante una hora o mas durante estos terrenos, obtienes los siguientes beneficios:\n\n -Aun si es terreno difícil, no disminuye el tiempo de viaje de tu grupo. \n\n -Tu grupo no se puede perder excepto a causa de efectos mágicos.\n\n -Permaneces alerta a tus alrededores aun si estas realizando tareas como juntar comida o rastreando huellas.\n\n -Si estas viajando solo, podes moverte sigilosamente aun yendo a velocidad normal.\n\n -Al buscar comida en estos terrenos, obtienes el doble de lo que normalmente obtendrías.\n\n -Al rastrear criaturas, podes identificar su tamaño, cantidad aproximada y hace cuanto tiempo pasaron por esa zona.'
  ],
);

Trait primalInstinct = Trait(
  name: 'Primal Instinct',
  description: [
    'Hasta 6 veces al dia, podes usar como una acción tu alerta primal.',
    'Revela en 1km a la redonda o 6km en tu terreno favorecido la presencia de criaturas: Celestiales, Aberraciones, Dragones, elementales, Feys, Abismales o No-muertos.',
    'Esta habilidad no revela su ubicación ni su cantidad, solo su presencia.'
  ],
);

Trait stealthyHunter = Trait(
  name: 'Stealthy Hunter',
  description: [
    'Podes usar tu acción hide como una acción bonus.',
    'Adicionalmente, si estabas escondido al comienzo de un combate, tus ataques no revelan tu posición durante la primer ronda de ese combate siempre y cuando permanezcas bajo las mismas condiciones en las que te escondiste.',
  ],
);

Trait teleport = Trait(
  name: 'Teleport',
  description: [
    'Puede transportarse hasta 8mts de distancia junto a cualquier objeto que este llevando.',
    'Antes o después de transportarse, puede usar una Mordida como parte de la acción.',
  ],
);
