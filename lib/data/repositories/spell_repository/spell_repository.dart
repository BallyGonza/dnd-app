import 'package:dnd_app/data/data.dart';

Spell speakWithAnimals = Spell(
  name: 'Hablar con Animales',
  level: '1',
  range: 'Propio',
  castTime: '1 acción (R)',
  duration: '10 min',
  comp: 'V, S',
  description:
      '''Limitado por la inteligencia de la bestia objetivo, puedes entenderla y hablar con ella.
      
      Puede comunicarte lo que haya experimentado durante el dia, asi como informarte sobre lugares o criaturas de la zona.
      
      En ocasiones, si logras convencerla, la bestia podría incluso realizar alguna tarea simple a pedido tuyo.''',
);

Spell stormOfSpikes = Spell(
  name: 'Tormenta de Espinas',
  level: '1',
  range: 'Propio',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 min)',
  comp: 'V',
  description:
      '''El proximo ataque a distancia que logres conectar, ademas de los efectos normales del ataque, obliga al objetivo y a las criaturas en 1 metro alrededor de ella, a realizar una tirada de salvación de Destreza.
      
      Si fallan, reciben 1d10 de daño de penetración o la mitad si la logran.
      
      A niveles mas altos, causa 1d10 de daño adicional por cada nivel extra encima del nivel 1, hasta un máximo de 6d10.''',
);

Spell huntersMark = Spell(
  name: 'Marca del Cazador',
  level: '1',
  range: '18 metros',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 hora)',
  comp: 'V',
  description:
      '''Eliges a una criatura que puedas ver dentro del alcance y la marcas de forma mística como tu presa. Cada vez que la golpees con un ataque de arma, recibe 1d6 de daño adicional.
      
      Tienes ventaja en chequeos de Percepción o Supervivencia para encontrar a esa criatura.
      
      Si los puntos de vida del objetivo se reducen a 0 antes de que el hechizo termine, puedes usar una acción bonus para trasladar la marca a otra criatura.
      
      A niveles mas altos, puedes mantener la concentración por 8 horas (nivel 3 o 4) o por 24 horas (nivel 5 o superior).''',
);

Spell spiritOfHealing = Spell(
  name: 'Espíritu de Sanación',
  level: '2',
  range: '12 metros',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 min)',
  comp: 'V, S',
  description:
      '''Llamas a un espíritu de la naturaleza que asiste a los heridos. La criatura aparece en un area de 1mt3 con apariencia de una Bestia o un Fey.
      
      Hasta que el hechizo termine, cuando cualquier criatura pase por el area, por primera vez en su turno o al comienzo del mismo, puedes hacer que recupere 1d6 de puntos de vida (no requiere una acción).
      
      El espíritu no puede curar no-muertos ni maquinas.
      
      Como acción bonus, puedes mover el espíritu hasta 6mts a un area que puedas ver.
      
      A niveles mas altos, la curación aumenta de 1d6 por cada nivel extra por encima del nivel 2.''',
);

Spell animalSense = Spell(
    name: 'Sentido Animal (R)',
    level: '2',
    range: 'Toque',
    castTime: '1 acción',
    duration: 'Conc. (1 hora)',
    comp: 'S',
    description:
        'Tocas una bestia aliada. Mientras dure el hechizo puedes usar tu acción para ver y oir a traves de los sentidos de la bestia hasta que uses una acción para volver a tus sentidos.');

Spell revive = Spell(
    name: 'Revivificar',
    level: '3',
    range: 'Toque',
    castTime: '1 acción',
    duration: 'Instantáneo',
    comp: 'V, S, M, (Diamante de 300g)*',
    description:
        '''Tocas a una criatura que haya estado muerta por menos de un minuto.
        
        La criatura vuelve a la vida con 1 punto de vida.
        
        Este hechizo no puede revivir a criaturas que hayan muerto por vejez, ni tampoco restaura partes del cuerpo perdidas.
        
        Si la criatura no posee partes del cuerpo u órganos necesarios para vivir (por ejemplo, su cabeza) el hechizo falla.''');

Spell elementalWeapon = Spell(
  name: 'Arma Elemental',
  level: '3',
  range: 'Toque',
  castTime: '1 acción bonus',
  duration: 'Conc. (1 hora)',
  comp: 'V, S',
  description:
      '''Elige uno de los siguientes tipos de daño: Ácido, Hielo, Fuego, Eléctrico o Trueno.
      
      Mientras dure el hechizo, conviertes un arma no-mágica, en un arma mágica con +1 de bonus en chequeos de ataque y 1d4 de daño adicional del tipo seleccionado.
      
      Si usas este hechizo a nivel 5 o 6, el bonus en chequeos de ataque aumenta a +2 y el daño extra a 2d4.
      
      Si usas este hechizo a nivel 7 o superior, el bonus en chequeos de ataque aumenta a +3 y el daño extra a 3d4.''',
);

Spell druidcraft = Spell(
  name: 'Druidcraft',
  level: 'Cantrip',
  range: '6 metros',
  castTime: '1 acción',
  duration: 'Instantáneo',
  comp: 'V, S',
  description: '''Crea una de los siguientes efectos:
  
  - Un efecto sensorial que predice el clima aproximado del área en las próximas 24 horas.
  
  - Hacer florecer instantáneamente el capullo de una flor.
  
  - Apagar o prender la llama de una vela, antorcha o una pequeña fogata.
  
  - Crear un efecto sensorial natural no-dañino, como hojas cayendo, una corriente de viento, o sonidos de animales pequeños.
  
  El efecto no puede exceder un area de 1mt3.''',
);

Spell repair = Spell(
    name: 'Reparar',
    level: 'Cantrip',
    range: 'Toque',
    castTime: '1 minuto',
    duration: 'Instantáneo',
    comp: 'V, S, M (piedra imantada)',
    description:
        '''Repara un objeto que toques, como una cadena rota, una llave partida en dos o una rasgadura en una tela. La rotura no puede ser superior a 30cm. La reparación causada por el hechizo no deja rastros del daño reparado.
        
        Este hechizo puede reparar objetos mágicos, pero no puede devolverles la magia imbuida en ellos en caso de haberla perdido.''');

Spell animalFriendship = Spell(
  name: 'Amistad Animal',
  level: '1',
  range: '6 metros',
  castTime: '1 acción',
  duration: '24 horas',
  comp: 'V, S, M (algún alimento)',
  description:
      '''Este hechizo te permite persuadir a una bestia de que no eres una amenaza y establecer una conexión amistosa con ella. Elige una bestia que puedas ver dentro del rango. La bestia debe ser capaz de verte y oírte. Si la inteligencia de la bestia es 4 o superior, el hechizo falla. De lo contrario, la bestia realiza una tirada de salvación de Sabiduría, si falla queda encantada por ti mientras dure el hechizo.
      
      Durante la duración del hechizo, la bestia será amistosa contigo y no te atacará a menos que se sienta amenazada o provocada. También puedes comunicarte con la bestia telepáticamente y persuadirla para que realice tareas simples y no peligrosas para ella.
      
      Si tú o uno de tus aliados daña a la bestia, el hechizo termina de inmediato. A niveles más altos, puedes elegir una criatura extra como objetivo por cada nivel extra por encima del nivel 1.''',
);
