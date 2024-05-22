-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2024 a las 04:39:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `es_administrador` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_usuario`, `usuario`, `contrasenia`, `es_administrador`) VALUES
(1, 'pokeadmin', '1234', 1),
(2, 'poke', '123', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id_bdd` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_tipo_pokemon1` int(16) NOT NULL,
  `id_tipo_pokemon2` int(16) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id_bdd`, `id_pokemon`, `imagen`, `nombre`, `id_tipo_pokemon1`, `id_tipo_pokemon2`, `descripcion`) VALUES
(4, 1, '1714415092.png', 'Bulbasaur', 1, 7, 'Bulbasaur es un Pokémon de tipo Planta/Veneno que se asemeja a un pequeño saurópodo con una planta brotando de su espalda. Es el Pokémon inicial de tipo Planta en la región de Kanto. Su cuerpo es principalmente de color verde con manchas más claras en su vientre. Tiene una cabeza grande y redonda con orejas puntiagudas, ojos grandes y expresivos, y una nariz pequeña. En su espalda, lleva una semilla bulbosa, que eventualmente crecerá hasta convertirse en un bulbo floreciente.'),
(5, 148, '1714420200.png', 'Dragonair', 14, 15, 'Dragonair es la evolución intermedia de Dratini y la pre-evolución de Dragonite, pertenecientes a la primera generación de Pokémon. Se caracteriza por su apariencia serpentina y elegante, con un cuerpo largo y delgado de color azul claro, adornado con una esfera blanca en su cuello y unas pequeñas alas en la parte posterior de su cabeza.\r\n\r\nLa apariencia de Dragonair está inspirada en las criaturas míticas de la mitología china, como el dragón oriental, lo que le otorga un aire de misterio y nobleza. Su nombre combina las palabras \"dragón\" y \"aire\", reflejando su conexión con el elemento del aire y su futura transformación en un poderoso dragón volador.'),
(6, 7, 'Squirtle.png', 'Squirtle', 3, NULL, 'Squirtle es uno de los Pokémon más queridos y reconocibles de la franquicia. Se le conoce como el \"Pokémon Tortuga\", ya que tiene una apariencia similar a una pequeña tortuga azul. Su caparazón es su característica más distintiva, el cual le brinda protección y lo hace bastante resistente. Tiene una cola corta en forma de hélice y unos ojos grandes y expresivos.\r\n\r\nEn términos de personalidad, Squirtle es amigable, juguetón y bastante travieso. Tiende a ser curioso y disfruta explorando su entorno. Además, es un Pokémon acuático, lo que significa que es muy hábil en el agua. Puede lanzar poderosos chorros de agua desde su boca con gran precisión, tanto para atacar como para defenderse. A medida que evoluciona, su capacidad para manipular el agua se vuelve aún más impresionante.'),
(7, 4, 'Charmander.png', 'Charmander', 2, NULL, 'Charmander es un Pokémon de tipo Fuego y es uno de los Pokémon iniciales de la región de Kanto. Tiene una apariencia similar a la de un pequeño lagarto con una cola en llamas. Su cuerpo es principalmente de color naranja, con una barriga amarilla y una pequeña llama en la punta de su cola. A pesar de su tamaño diminuto, Charmander emana una sensación de valentía y determinación en su mirada.'),
(8, 144, 'Articuno.png', 'Articuno', 14, NULL, 'Articuno es uno de los legendarios Pokémon pájaro, conocidos por su majestuosa apariencia y su dominio sobre el hielo. Es parte del trío de aves legendarias junto con Zapdos y Moltres. Articuno se caracteriza por su coloración azul y blanca, con plumas largas y elegantes que le confieren un aspecto real y gélido.\r\n\r\nSu nombre proviene de \"artico\" y \"uno\", lo que refleja su asociación con el frío extremo y su estatus como el primer miembro del trío de aves legendarias. Articuno es conocido por su habilidad para controlar el clima y crear intensas nevadas. Se dice que su simple aleteo puede enfriar el aire circundante y convertir la humedad en nieve.'),
(9, 24, 'Arbok.png', 'Arbok', 7, NULL, 'Arbok es un Pokémon de tipo Veneno de la primera generación, conocido por su apariencia intimidante y su habilidad para lanzar ataques venenosos. Es la evolución de Ekans y se caracteriza por su largo cuerpo serpentino y su rostro con forma de cobra.\r\n\r\nLa apariencia de Arbok está inspirada en una serpiente venenosa, con una piel de color púrpura oscuro y un patrón de manchas en forma de rombo a lo largo de su cuerpo. Tiene una capucha en forma de cara de cobra en su cuello, que puede desplegar para intimidar a sus oponentes.'),
(10, 12, 'Butterfree.png', 'Butterfree', 16, 4, '\r\nButterfree es un Pokémon de tipo Bicho/Volador de la primera generación, conocido por su apariencia elegante y su capacidad para volar con gracia. Es la evolución final de Caterpie y Metapod, y es uno de los Pokémon más emblemáticos de la región de Kanto.\r\n\r\nEn términos de diseño, Butterfree tiene un cuerpo delgado y ligero, con alas grandes y vistosas que le permiten volar con facilidad. Sus alas están decoradas con patrones de colores brillantes, que varían según la región en la que se encuentre. Tiene grandes ojos compuestos y antenas largas y delgadas que le dan una apariencia encantadora y expresiva.'),
(12, 15, '1714863113.png', 'Beedrill', 16, 7, 'Beedrill es un Pokémon de tipo Bicho/Veneno de la primera generación, conocido por su apariencia feroz y su capacidad para lanzar potentes ataques con su aguijón. Es la evolución final de Weedle y Kakuna, y es uno de los Pokémon más intimidantes de la región de Kanto.\r\n\r\nEn términos de diseño, Beedrill tiene un cuerpo delgado y aerodinámico, con una combinación de colores amarillo y negro que le otorga un aspecto llamativo y peligroso. Sus grandes ojos rojos compuestos y su aguijón venenoso son sus características más distintivas. Además, tiene dos pares de alas membranosas que le permiten volar con agilidad y rapidez.\r\n\r\nBeedrill es conocido por su naturaleza agresiva y territorial. Es capaz de lanzar ataques rápidos y precisos con su aguijón venenoso, así como también puede utilizar movimientos como \"Ataque Furia\" y \"Picotazo Venenoso\" en batalla. Su presencia en el campo de batalla puede ser intimidante para sus oponentes, ya que es un combatiente formidable y decidido.'),
(13, 2, '1714863557.png', 'Ivysaur', 1, 7, 'Ivysaur es la evolución de Bulbasaur y también es un Pokémon de tipo Planta/Veneno. Su apariencia es más robusta que la de Bulbasaur, con un cuerpo más grande y fuerte. A diferencia de Bulbasaur, la planta en la espalda de Ivysaur ha crecido significativamente y ahora se asemeja a una flor en capullo que está a punto de florecer. Esta planta es la fuente de la energía de Ivysaur y puede almacenar nutrientes absorbidos de la luz solar para su uso durante la batalla.'),
(14, 3, '1714863769.png', 'Venusaur', 1, 7, 'Venusaur es la forma evolucionada final de Bulbasaur, y es un Pokémon de tipo Planta/Veneno. Es la culminación de la línea evolutiva que comienza con Bulbasaur, pasando por Ivysaur, hasta alcanzar su estado más poderoso. Venusaur es una criatura imponente y majestuosa, con un cuerpo grande y robusto que irradia una sensación de fuerza y dominio.'),
(22, 30, '1714864163.png', 'Nidorina', 7, 1, 'Nidorina es un Pokémon de tipo Veneno de la primera generación que es la evolución de Nidoran♀ y la pre-evolución de Nidoqueen cuando se le otorga una piedra lunar. Es conocida por su apariencia elegante y su naturaleza protectora hacia sus crías.\r\n\r\nEn términos de diseño, Nidorina tiene una forma similar a un conejo o roedor, con una piel de color azul grisáceo y grandes orejas puntiagudas. A diferencia de Nidoran♀, sus colmillos son más prominentes y su cola es más larga y con forma de espiral. Suele tener una actitud cautelosa y protectora, especialmente hacia las crías y los miembros más jóvenes de su manada.\r\n\r\nEn batalla, Nidorina es capaz de utilizar una variedad de ataques venenosos, como \"Doble Patada\", \"Picotazo Venenoso\" y \"Cola Veneno\". Aunque no es tan poderosa como su evolución final, Nidoqueen, Nidorina sigue siendo una combatiente competente, capaz de defenderse y proteger a su grupo con determinación.'),
(23, 32, '1714864259.png', 'Nidoran', 7, 7, 'Nidoran♀ es un Pokémon de tipo Veneno de la primera generación que se distingue por ser la forma hembra de la especie Nidoran. Es conocida por su apariencia similar a un conejo o roedor y por su naturaleza territorial y protectora.\r\n\r\nEn términos de diseño, Nidoran♀ tiene una apariencia ligeramente más delicada en comparación con su contraparte masculina, Nidoran♂. Tiene una piel de color azul grisáceo y grandes orejas puntiagudas. Su cola es corta y su cola tiene un aspecto más suave. Aunque es pequeña y adorable, Nidoran♀ es capaz de defenderse con su aguijón venenoso en caso de amenaza.\r\n\r\nEn batalla, Nidoran♀ es capaz de utilizar una variedad de ataques venenosos, como \"Picotazo Venenoso\" y \"Doble Patada\". Aunque no es particularmente fuerte por sí misma, su naturaleza territorial y su capacidad para proteger a su grupo la convierten en una adición valiosa al equipo de un entrenador.'),
(24, 6, '1714864361.png', 'Charizard', 2, 4, 'Charizard es la evolución final de Charmander, y es uno de los Pokémon más emblemáticos y poderosos de la región de Kanto. Es un Pokémon de tipo Fuego/Volador, lo que lo convierte en una combinación letal en batalla. Charizard se caracteriza por su imponente tamaño y su aspecto de dragón, con grandes alas membranosas que le permiten volar a grandes alturas.\r\n\r\nSu cuerpo está cubierto de escamas naranjas y tiene una llama intensa que arde en la punta de su cola. Esta llama es un indicador de su salud y su poder, y cuanto más fuerte sea el Charizard, más brillante será la llama. Charizard es conocido por su temperamento feroz y su naturaleza competitiva, lo que lo convierte en un desafiante oponente en el campo de batalla.'),
(25, 18, '1714864441.png', 'Pidgeot', 6, 4, 'Pidgeot es un Pokémon de tipo Volador de la primera generación, conocido por su majestuosa apariencia y su habilidad para volar a grandes alturas con gracia y rapidez. Es la evolución final de Pidgey y Pidgeotto, y es uno de los Pokémon más emblemáticos de la región de Kanto.\r\n\r\nEn términos de diseño, Pidgeot tiene un aspecto imponente, con un cuerpo aerodinámico y alas poderosas que le permiten volar con gran velocidad. Su plumaje es de color marrón y blanco, con una cresta prominente en la parte superior de su cabeza y una cola larga y elegante. Sus ojos son grandes y expresivos, lo que refleja su aguda visión y su naturaleza vigilante.'),
(26, 84, '1714864648.png', 'Doduo', 6, 4, 'Doduo es un Pokémon de la primera generación de tipo Normal/Volador conocido por su peculiar apariencia de dos cabezas. Es un Pokémon bastante peculiar y reconocible.\r\n\r\nEn términos de diseño, Doduo tiene un cuerpo pequeño y rechoncho con dos cabezas idénticas y sin cuello que surgen de su torso. Cada cabeza tiene un pico largo y afilado y una cresta en la parte superior. Tiene patas cortas pero robustas que le permiten correr a gran velocidad.'),
(28, 81, '1714864813.png', 'Magnemite', 8, 8, 'Magnemite es un Pokémon de la primera generación de tipo Eléctrico/Acero, conocido por su diseño único que se asemeja a un imán. Es un Pokémon artificial que se compone principalmente de metal y posee propiedades magnéticas.\r\n\r\nEn cuanto a su apariencia, Magnemite consiste en una esfera flotante de metal con un imán en ambos lados. Tiene un ojo grande en el centro de su cuerpo, que emite destellos eléctricos. A menudo se le ve flotando en el aire gracias a la energía magnética que le permite levitar.\r\n\r\nMagnemite es capaz de generar energía eléctrica y utilizarla en batalla. Puede lanzar potentes descargas eléctricas con movimientos como \"Impactrueno\" y \"Rayo\". Además, su tipo secundario de Acero le brinda resistencia adicional contra ciertos tipos de ataques, haciéndolo bastante versátil en combate.'),
(29, 78, '1714864879.png', 'Rapidash', 2, 2, 'Rapidash es la evolución de Ponyta y es un majestuoso Pokémon de tipo Fuego. Se distingue por su gracia y velocidad incomparables, convirtiéndolo en uno de los Pokémon más admirados en la región. Su cuerpo es elegante y esbelto, con un pelaje blanco y una melena de fuego que ondea al viento mientras galopa a toda velocidad.'),
(30, 77, '1714864953.png', 'Ponyta', 2, 2, 'Ponyta es un Pokémon de tipo Fuego conocido por su belleza y gracia. Se asemeja a un caballo joven y ágil, con un cuerpo cubierto de un pelaje suave y llameante de color blanco. Las llamas que emergen de su cuerpo son el resultado de su tipo de fuego interno, que se mantiene ardiendo constantemente. Estas llamas no solo añaden un toque visual espectacular a Ponyta, sino que también le proporcionan energía y calor.'),
(31, 76, '1714865027.png', 'Golem', 12, 9, 'Golem es un Pokémon de tipo Roca/Tierra de la primera generación, conocido por su apariencia robusta y su resistencia física. Es la evolución final de Geodude y Graveler, y es uno de los Pokémon más poderosos de su tipo.\r\n\r\nEn términos de diseño, Golem tiene un cuerpo corpulento y rocoso, con una capa exterior de piedra que le brinda una excelente defensa contra ataques físicos. Tiene cuatro brazos musculosos y una cabeza grande con ojos pequeños y una boca ancha. En la parte superior de su cabeza hay una corona de rocas puntiagudas.\r\n\r\nGolem es conocido por su fuerza bruta y su capacidad para lanzar ataques poderosos. Puede utilizar movimientos como \"Terremoto\", \"Roca Afilada\" y \"Puño Fuego\" para causar daño masivo a sus oponentes. Además, su tipo Roca/Tierra le otorga resistencia a los ataques de tipo Fuego, Eléctrico, Normal y Veneno, lo que lo convierte en un adversario formidable en batalla.'),
(32, 73, '1714865084.png', 'Tentacruel', 7, 3, 'Tentacruel es un Pokémon de tipo Agua/Veneno de la primera generación, conocido por su aspecto intimidante y su habilidad para controlar tentáculos venenosos. Es la evolución final de Tentacool y es frecuentemente encontrado en aguas profundas.\r\n\r\nEn cuanto a su diseño, Tentacruel tiene un cuerpo gelatinoso de color azul claro con rayas moradas. Tiene una forma similar a una medusa, con una gran cúpula en la parte superior que alberga su órgano central. De esta cúpula emergen varios tentáculos largos y delgados, que usa para moverse y capturar presas. En la parte inferior de su cuerpo, tiene una especie de campana que utiliza para propulsarse en el agua.\r\n\r\nTentacruel es conocido por su naturaleza agresiva y su capacidad para lanzar ataques venenosos con sus tentáculos. Puede utilizar movimientos como \"Rayo Burbuja\", \"Rayo Hielo\" y \"Rayo Confuso\" para atacar a sus oponentes con precisión. Además, es capaz de liberar grandes cantidades de toxinas en el agua, lo que le permite proteger su territorio y disuadir a los intrusos.'),
(33, 88, '1714870832.png', 'Grimer', 7, 7, '\r\nGrimer es un Pokémon de tipo Veneno de la primera generación, conocido por su aspecto viscoso y su habilidad para contaminar su entorno. Es una masa amorfa compuesta principalmente de lodo tóxico y residuos industriales.\r\n\r\nEn cuanto a su diseño, Grimer tiene un cuerpo amorfo de color morado oscuro o negro con manchas verdes y amarillas que simulan desechos tóxicos. Su cuerpo está constantemente emitiendo un olor fétido y desagradable. No tiene rasgos distintivos como extremidades o facciones faciales claras, lo que le da un aspecto amorfamente perturbador.'),
(37, 80, '1714871196.png', 'Slowbro', 3, 11, '\r\nSlowbro es un Pokémon de tipo Agua/Psíquico de la primera generación, conocido por su aspecto peculiar y su conexión simbiótica con un Shellder adherido a su cola. Es la evolución de Slowpoke y es conocido por su calma y su capacidad para resistir ataques con serenidad.\r\n\r\nEn términos de diseño, Slowbro tiene una apariencia peculiar y distintiva. Su cuerpo está cubierto de piel gruesa y rosada, con un caparazón duro en su espalda. En su cola se encuentra adherido un Shellder, que parece haberse fusionado con Slowbro después de morderle. Esta unión simbiótica es una parte integral de la evolución de Slowpoke a Slowbro.'),
(38, 90, '1714871350.png', 'Shellder', 3, 3, 'Shellder es un Pokémon de tipo Agua de la primera generación, conocido por su caparazón en forma de concha y su habilidad para adherirse a otros Pokémon, como Slowpoke, para evolucionar. Es un Pokémon bastante común en aguas costeras y se encuentra principalmente en mares y océanos.\r\n\r\nEn términos de diseño, Shellder tiene una concha en forma de espiral que le sirve de protección. Su caparazón es de color azul oscuro con franjas blancas, y tiene unos ojos pequeños y negros en la parte superior. Tiene una lengua larga y afilada que usa para capturar presas y alimentarse de pequeños organismos marinos.\r\n\r\nAunque Shellder puede parecer inofensivo a primera vista, es capaz de lanzar ataques de agua con fuerza cuando se siente amenazado. Puede aprender movimientos como \"Pistola Agua\", \"Clamp\" y \"Explosión Acuática\" para defenderse y atacar a sus oponentes en batalla.'),
(39, 66, '1714871412.png', 'Machop', 10, 10, 'Machop es un Pokémon de tipo Lucha de la primera generación, conocido por su musculatura robusta y su determinación en el entrenamiento. Es uno de los Pokémon más icónicos dentro del tipo Lucha y es apreciado por su fuerza física y su potencial de evolución.\r\n\r\nEn términos de diseño, Machop tiene un cuerpo humanoide, pero con una musculatura notablemente más desarrollada. Su piel es de color gris azulado, con líneas marcadas que resaltan sus músculos. Tiene una cabeza grande con un par de ojos negros y una nariz pequeña. Sus extremidades son robustas y están diseñadas para el combate cuerpo a cuerpo.'),
(40, 56, '1714871514.png', 'Mankey', 10, 10, '\r\nMankey es un Pokémon de tipo Lucha de la primera generación, conocido por su temperamento salvaje y su agresividad en combate. Es un Pokémon simiesco con una actitud muy enérgica y combativa.\r\n\r\nEn términos de diseño, Mankey tiene un cuerpo pequeño y delgado, con una piel de color marrón y una cola corta. Tiene una cabeza grande con orejas puntiagudas y ojos furiosos. Sus puños son grandes y poderosos, lo que refleja su naturaleza combativa y su habilidad para lanzar golpes rápidos y poderosos.\r\n\r\nMankey es conocido por su temperamento extremadamente irritable. Se enfada fácilmente y es propenso a entrar en estados de furia intensa cuando se siente amenazado o desafiado. Aunque puede ser difícil de controlar, Mankey es extremadamente leal hacia su entrenador y está dispuesto a luchar con valentía para protegerlo.'),
(41, 64, '1714876280.png', 'Kadabra', 11, 11, 'Kadabra es un Pokémon de tipo Psíquico de la primera generación, conocido por su inteligencia y sus habilidades psíquicas sobresalientes. Es la evolución de Abra y la pre-evolución de Alakazam, y es apreciado por su poder mental y sus capacidades telepáticas.\r\n\r\nEn cuanto a su diseño, Kadabra tiene una apariencia humanoida con rasgos felinos. Tiene una piel de color amarillo dorado, con un pecho y abdomen de color marrón claro. Su cabeza tiene una forma distintiva con orejas puntiagudas y un bigote que se asemeja a una barba. También lleva una cuchara doblada, que utiliza como herramienta psíquica.\r\n\r\nKadabra es conocido por su aguda mente y sus habilidades telepáticas. Puede leer los pensamientos de los demás y comunicarse telepáticamente con otros Pokémon y personas. Además, es capaz de utilizar una variedad de ataques psíquicos, como \"Confusión\", \"Psíquico\" y \"Onda Mental\", para atacar a sus oponentes con poder mental.'),
(42, 47, '1714876356.png', 'Parasect', 16, 1, NULL),
(43, 44, '1714876481.png', 'Gloom', 1, 7, 'Gloom es un Pokémon de tipo Planta/Veneno que evoluciona a partir de Oddish. Su apariencia es bastante peculiar y algo desagradable para algunos, pero no deja de tener su propio encanto. Gloom tiene un cuerpo de color azul-verdoso, con una expresión facial sombría y ojos entrecerrados. Su característica más distintiva es su enorme flor en la parte superior de la cabeza, la cual tiene un aspecto marchito y emana un olor fuerte y desagradable.'),
(44, 25, '1714876574.png', 'Pikachu', 8, 8, NULL),
(45, 33, '1714876648.png', 'Nidorino', 7, 1, NULL),
(48, 28, '1714876870.png', 'Sandslash', 9, 9, NULL),
(49, 19, '1714877013.png', 'Rattata', 6, 9, '\r\nRattata es un Pokémon de tipo Normal de la primera generación, conocido por ser un roedor común y abundante en el mundo Pokémon. Es uno de los Pokémon más reconocibles y emblemáticos de la serie, y es visto como una plaga en algunas regiones.\r\n\r\nEn cuanto a su diseño, Rattata tiene un cuerpo pequeño y ágil, con pelaje marrón y blanco y grandes bigotes. Sus orejas son grandes y redondeadas, y tiene una cola larga y delgada. A pesar de su tamaño diminuto, Rattata es ágil y rápido, lo que le permite moverse con facilidad y esquivar los ataques de sus oponentes.\r\n\r\nRattata es conocido por su habilidad para roer y masticar cualquier cosa que se cruce en su camino, lo que a menudo lo convierte en una molestia para los entrenadores y las personas que viven cerca de su hábitat. Aunque generalmente es inofensivo, puede volverse agresivo si se siente amenazado o acorralado.'),
(50, 16, '1714877079.png', 'Pidgey', 6, 4, '\r\nPidgey es un Pokémon de tipo Normal/Volador de la primera generación, conocido por ser uno de los Pokémon voladores más comunes y reconocibles en el mundo Pokémon. Es un pájaro pequeño y ágil que se encuentra en una amplia variedad de hábitats, desde bosques hasta áreas urbanas.\r\n\r\nEn cuanto a su diseño, Pidgey tiene un cuerpo redondeado y pequeño, con plumaje marrón y crema. Tiene alas cortas pero poderosas que le permiten volar con agilidad, así como una cola corta y puntiaguda. Sus ojos son grandes y expresivos, y tiene un pico corto y afilado.\r\n\r\nPidgey es conocido por su naturaleza curiosa y su disposición amigable. A menudo se le ve volando en busca de comida o explorando su entorno. Aunque no es particularmente fuerte en combate, es capaz de defenderse utilizando una variedad de movimientos de tipo Normal y Volador, como \"Ataque Rápido\", \"Picotazo\" y \"Tornado\". Además, puede aprender movimientos de apoyo como \"Vuelo\" y \"Viento Aciago\" para ayudar a su equipo en batalla.'),
(52, 13, '1714877281.png', 'Weedle', 16, 7, NULL),
(54, 9, '1714877455.png', 'Blastoise', 3, 3, 'Blastoise es la evolución final de Squirtle, uno de los Pokémon iniciales de la región de Kanto. Es ampliamente reconocido por su imponente apariencia y su capacidad para lanzar poderosos chorros de agua desde los cañones ubicados en su caparazón.\r\n\r\nEn términos de diseño, Blastoise es una criatura grande y corpulenta, con un caparazón robusto que cubre la mayor parte de su cuerpo. Sus cañones de agua, situados en su espalda, son su característica más distintiva y le otorgan una apariencia intimidante. Su caparazón es de color azul oscuro y su vientre es de un tono más claro, con una cola corta y gruesa.'),
(55, 37, '1714877534.png', 'Vulpix', 2, 2, 'Vulpix es un Pokémon de tipo Fuego de la primera generación, conocido por su belleza y gracia. Es un pequeño zorro de color blanco con seis colas que se encienden con un fuego misterioso y ardiente. Su apariencia lo hace muy popular entre los entrenadores.\r\n\r\nEn términos de diseño, Vulpix tiene un pelaje suave y sedoso de color blanco, ojos azules brillantes y orejas puntiagudas. Sus seis colas son largas y esponjosas, y cada una está adornada con una llama ardiente. Esta llama es un indicador de la salud y el estado emocional de Vulpix. Si se siente feliz y saludable, las llamas arderán con un brillo brillante y cálido.\r\n\r\nVulpix es conocido por ser un Pokémon amistoso y cariñoso, pero también tiene una naturaleza astuta y curiosa. Puede ser un compañero leal y afectuoso para su entrenador, pero también tiene un lado travieso y juguetón. En batalla, utiliza movimientos de tipo Fuego como \"Ascuas\" y \"Lanzallamas\" para atacar a sus oponentes con llamas ardientes y poderosas.\r\n\r\n'),
(57, 31, '1714877683.png', 'Nidoqueen', 7, 9, NULL),
(58, 38, '1714877751.png', 'Ninetales', 2, 7, 'Ninetales es la evolución de Vulpix y es un Pokémon de tipo Fuego. Es conocido por su belleza y su majestuosidad, así como por su elegante apariencia y su cola de nueve llamas ardientes.\r\n\r\nEn términos de diseño, Ninetales tiene un pelaje largo y sedoso de color blanco con detalles dorados en su cuerpo y cola. Su cola es especialmente llamativa, ya que está formada por nueve llamas que arden con un fuego místico y ardiente. Sus ojos son de color rojo intenso y transmiten una sensación de sabiduría y serenidad.\r\n\r\nNinetales es conocido por su gracia y su naturaleza reservada. Se dice que tiene la capacidad de traer buena fortuna a aquellos que lo encuentran, pero también puede ser vengativo si se siente traicionado o amenazado. Además de su belleza, Ninetales es valorado por su poder en combate, ya que puede utilizar una variedad de movimientos de tipo Fuego, así como movimientos psíquicos como \"Confusión\" y \"Psíquico\".\r\n\r\nEn la región de Alola, Ninetales tiene una forma alternativa conocida como Alola Ninetales, que es de tipo Hielo/Hada en lugar de Fuego. Esta forma tiene un pelaje de color blanco brillante con detalles azules y una cola helada que refleja su adaptación al clima frío de la región de Alola.'),
(59, 39, '1714877853.png', 'Jigglypuff', 6, 4, 'Jigglypuff es un Pokémon de tipo Normal/Hada de la primera generación, conocido por su apariencia esférica y su capacidad para cantar canciones de cuna que inducen el sueño en quienes las escuchan. Es uno de los Pokémon más adorables y reconocibles de la franquicia Pokémon.\r\n\r\nEn términos de diseño, Jigglypuff tiene un cuerpo redondeado y rosado, con grandes ojos azules y una pequeña boca en forma de \"O\". Tiene orejas puntiagudas y una pequeña marca circular en su frente. A menudo se le ve con un micrófono en forma de bolígrafo, ya que le encanta cantar para entretener a los demás. Su apariencia inocente y su naturaleza juguetona lo hacen muy popular entre los entrenadores y aficionados.'),
(60, 42, '1714877951.png', 'Golbat', 7, 4, NULL),
(61, 43, '1714878075.png', 'Oddish', 1, 7, 'Oddish es un Pokémon de tipo Planta/Veneno que se asemeja a una pequeña planta con forma de bulbos. Su cuerpo es predominantemente de color azul con hojas verdes en su cabeza y extremidades. Tiene grandes ojos rojos y una boca en forma de \"o\", dándole una expresión adorable y algo somnolienta. Oddish tiene la capacidad de camuflarse fácilmente entre la vegetación gracias a su apariencia vegetal.'),
(62, 46, '1714878178.png', 'Paras', 16, 1, NULL),
(63, 45, '1714878318.png', 'Vileplume', 1, 7, 'Vileplume es la evolución final de Oddish, y es un Pokémon de tipo Planta/Veneno. Se distingue por su aspecto imponente y su gran belleza. Su cuerpo está dominado por una flor enorme y colorida que florece en la parte superior de su cabeza. Esta flor emana un aroma dulce y embriagador que puede tener efectos tranquilizantes o confusos en quienes lo inhalan, dependiendo de la cantidad y la sensibilidad individual.'),
(64, 50, '1714878482.png', 'Diglett', 9, 9, NULL),
(66, 54, '1714878819.png', 'Psyduck', 3, 3, 'Psyduck es un Pokémon de tipo Agua de la primera generación, conocido por su aspecto patoso y su constante dolor de cabeza. Es un pato amarillo con un pico anaranjado y ojos rojos, y a menudo se le ve sosteniéndose la cabeza debido a sus dolores.\r\n\r\nEn cuanto a su personalidad, Psyduck es un Pokémon bastante distraído y despistado. Tiene una expresión perpetuamente confundida y a menudo parece estar en un estado de constante confusión. Sin embargo, cuando se desata su dolor de cabeza, su poder psíquico se despierta y es capaz de utilizar habilidades psíquicas poderosas.\r\n\r\nPsyduck es conocido por su habilidad especial llamada \"Despiste\", que aumenta su poder psíquico cuando se encuentra en estado de confusión. En batalla, puede utilizar movimientos de tipo Agua como \"Pistola Agua\", \"Chorro de Agua\" y \"Hidrobomba\", así como movimientos psíquicos como \"Confusión\" y \"Psíquico\" cuando su dolor de cabeza alcanza su punto máximo.\r\n\r\nA pesar de su naturaleza distraída, Psyduck es un Pokémon querido por muchos entrenadores. A menudo es retratado como un compañero cómico y entrañable en la serie animada de Pokémon, y su torpeza y sus dolores de cabeza crónicos lo convierten en un personaje memorable y querido por los fanáticos.\r\n\r\n\r\n\r\n'),
(67, 58, '1714878929.png', 'Growlithe', 2, 2, '\r\nArcanine es la evolución de Growlithe y un Pokémon de tipo Fuego de la primera generación, conocido por su imponente presencia y su velocidad legendaria. Es un Pokémon majestuoso y poderoso que a menudo es admirado por su belleza y su lealtad.\r\n\r\nEn términos de diseño, Arcanine tiene un aspecto similar al de un león o un tigre, con un pelaje anaranjado y blanco que le da un aspecto majestuoso y poderoso. Su cuerpo está cubierto de músculos fuertes y tiene una melena larga y esponjosa alrededor de su cuello y cola. Sus ojos son intensos y reflejan su aguda inteligencia y determinación.\r\n\r\nArcanine es conocido por su velocidad y su resistencia en combate. Es capaz de correr a velocidades increíbles y es considerado uno de los Pokémon más rápidos. En batalla, confía en su velocidad y su fuerza física, así como en su amplio repertorio de movimientos de tipo Fuego, como \"Lanzallamas\", \"Envite Ígneo\" y \"Rueda Fuego\", para derrotar a sus oponentes con gracia y poder.\r\n\r\nAdemás de su habilidad en combate, Arcanine es valorado por su naturaleza noble y su lealtad hacia su entrenador y su manada. Es un guardián valiente que protege a los que ama con determinación y coraje. Su presencia en el equipo de un entrenador no solo agrega un poder formidable en batalla, sino también un compañero leal y digno de confianza.'),
(68, 59, '1714879117.png', 'Arcanine', 2, 12, NULL),
(69, 62, '1714879200.png', 'Poliwrath', 3, 10, 'Poliwrath es un Pokémon de tipo Agua/Lucha de la primera generación, conocido por su imponente físico y su destreza en combate. Es la evolución final de Poliwag y Poliwhirl, y es apreciado por su fuerza y su resistencia en batalla.\r\n\r\nEn cuanto a su diseño, Poliwrath tiene una apariencia musculosa y atlética, con una piel azul oscuro y un vientre blanco. Tiene grandes brazos musculosos y piernas robustas que le dan una apariencia imponente. En su vientre tiene una esfera rosada que se cree que es su órgano interno, y tiene un par de ojos redondos y amarillos.\r\n\r\nPoliwrath es conocido por ser un luchador formidable que combina poderosos ataques de tipo Agua con técnicas de combate cuerpo a cuerpo de tipo Lucha. Puede aprender movimientos como \"Hidrobomba\", \"Hidropulso\" y \"Hidrochorro\" para atacar a sus oponentes con potentes chorros de agua, así como movimientos de tipo Lucha como \"Puño Hielo\", \"Puño Fuego\" y \"Puño Certero\" para enfrentarse a ellos en combate cercano.'),
(71, 63, '1714879549.png', 'Abra', 11, 11, NULL),
(73, 61, '1714879933.png', 'Poliwhirl', 3, 3, '\r\nPoliwhirl es un Pokémon de tipo Agua de la primera generación, conocido por su distintiva espiral en su abdomen y su capacidad para girar rápidamente en el agua. Es la evolución de Poliwag y puede evolucionar a Poliwrath si se le otorga una piedra Agua, o a Politoed si se le intercambia con un objeto específico equipado.\r\n\r\nEn cuanto a su diseño, Poliwhirl tiene un cuerpo redondeado y de color azul, con una barriga blanca y una espiral amarilla en su vientre. Tiene dos brazos y piernas cortas, así como una cabeza grande con dos esferas negras que representan sus ojos. Además, tiene una especie de collar en el cuello, que es más prominente en su evolución, Poliwrath.\r\n\r\nPoliwhirl es conocido por su habilidad para nadar ágilmente en el agua gracias a su cola bifurcada y sus habilidades natatorias. En batalla, utiliza una combinación de movimientos de tipo Agua, como \"Pistola Agua\" y \"Hidrobomba\", junto con técnicas de tipo Normal y de tipo Lucha, como \"Bofetón Lodo\" y \"Puño Certero\", para enfrentarse a sus oponentes.'),
(74, 55, '1714880024.png', 'Golduck', 3, 3, 'Golduck es un Pokémon de tipo Agua de la primera generación, conocido por su elegante y ágil nado. Es la evolución de Psyduck y es apreciado por su velocidad y poder en el agua.\r\n\r\nEn términos de diseño, Golduck tiene una apariencia similar a la de un pato o un ornitorrinco, con un cuerpo azul y blanco y una cola larga y elegante. Tiene ojos rojos intensos y una cresta en forma de pico en la parte superior de su cabeza, lo que le da un aspecto distintivo y majestuoso.\r\n\r\nGolduck es conocido por su habilidad para nadar rápidamente en el agua. Es un nadador ágil y poderoso que puede superar a sus oponentes con facilidad en entornos acuáticos. Además de su destreza en el agua, Golduck también es un combatiente formidable en tierra firme, capaz de aprender una variedad de movimientos de tipo Agua, como \"Hidrobomba\", \"Surf\" y \"Hidropulso\", así como movimientos de tipo Psíquico como \"Psíquico\" y \"Confusión\".\r\n\r\nAdemás de sus habilidades en combate, Golduck es conocido por su naturaleza calmada y reservada. A menudo se le ve nadando en lagos y ríos solitarios, disfrutando de la tranquilidad y la serenidad del agua. Aunque puede parecer distante, Golduck es un compañero leal y protector que está dispuesto a defender a su entrenador y su manada con valentía y determinación.'),
(75, 57, '1714880083.png', 'Primeame', 10, 10, NULL),
(76, 41, '1714880240.png', 'Zubat', 7, 6, NULL),
(78, 49, '1714880432.png', 'Venomoth', 16, 7, NULL),
(79, 23, 'Ekans.png', 'Ekans', 7, 7, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo_pokemon` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo_pokemon`, `descripcion`) VALUES
(1, 'planta'),
(2, 'fuego'),
(3, 'agua'),
(4, 'volador'),
(5, 'insecto'),
(6, 'normal'),
(7, 'veneno'),
(8, 'electrico'),
(9, 'tierra'),
(10, 'lucha'),
(11, 'psiquico'),
(12, 'roca'),
(13, 'fantasma'),
(14, 'hielo'),
(15, 'dragon'),
(16, 'bicho');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_bdd`),
  ADD UNIQUE KEY `id_pokemon` (`id_pokemon`),
  ADD KEY `fk_tipo_pokemon1` (`id_tipo_pokemon1`),
  ADD KEY `fk_tipo_pokemon2` (`id_tipo_pokemon2`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo_pokemon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_bdd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo_pokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `fk_tipo_pokemon1` FOREIGN KEY (`id_tipo_pokemon1`) REFERENCES `tipo` (`id_tipo_pokemon`),
  ADD CONSTRAINT `fk_tipo_pokemon2` FOREIGN KEY (`id_tipo_pokemon2`) REFERENCES `tipo` (`id_tipo_pokemon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
