import 'package:flutter_cc/models/planet_class.dart';

const double kDouble5 = 5.0;
const double kDouble10 = 10.0;
const double kDouble20 = 20.0;
const double kDouble40 = 40.0;

final Planet mercury = Planet(
  name: 'Mercury',
  description:
      'Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System.',
  image: 'images/mercury.png',
  distance: '57.9 million km',
  gravity: '3.7 m/s²',
  radius: '2,439.7 km',
  temperature: '430°C',
);

final Planet venus = Planet(
  name: 'Venus',
  description:
      'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earth\'s night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.',
  image: 'images/venus.png',
  distance: '108.2 million km',
  gravity: '8.87 m/s²',
  radius: '6,051.8 km',
  temperature: '471°C',
);

final Planet earth = Planet(
  name: 'Earth',
  description:
      'Earth is the third planet from the Sun and the only astronomical object known to harbor and support life. About 29.2% of Earth\'s surface is land consisting of continents and islands.',
  image: 'images/earth.png',
  distance: '149.6 million km',
  gravity: '9.81 m/s²',
  radius: '6,371 km',
  temperature: '16°C',
);

final Planet mars = Planet(
  name: 'Mars',
  description:
      'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the "Red Planet".',
  image: 'images/mars.png',
  distance: '227.9 million km',
  gravity: '3.711 m/s²',
  radius: '3,389.5 km',
  temperature: '-28°C',
);

final Planet jupiter = Planet(
  name: 'Jupiter',
  description:
      'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined.',
  image: 'images/jupiter.png',
  distance: '778.6 million km',
  gravity: '24.79 m/s²',
  radius: '69,911 km',
  temperature: '-108°C',
);

final Planet saturn = Planet(
  name: 'Saturn',
  description:
      'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.',
  image: 'images/saturn.png',
  distance: '1.4 billion km',
  gravity: '10.44 m/s²',
  radius: '58,232 km',
  temperature: '-138°C',
);

final Planet uranus = Planet(
  name: 'Uranus',
  description:
      'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.',
  image: 'images/uranus.png',
  distance: '2.9 billion km',
  gravity: '8.69 m/s²',
  radius: '25,362 km',
  temperature: '-195°C',
);

final Planet neptune = Planet(
  name: 'Neptune',
  description:
      'Neptune is the eighth and farthest known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.',
  image: 'images/neptune.png',
  distance: '4.4 billion km',
  gravity: '11.15 m/s²',
  radius: '24,622 km',
  temperature: '-201°C',
);
