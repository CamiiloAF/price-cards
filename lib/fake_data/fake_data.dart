import 'package:price_cards/models/card_model.dart';
import 'package:price_cards/models/characteristic.dart';

final planes = [
  CardModel(
    isMostPopular: true,
    price: '1,000',
    title: 'Intermedio',
    description: 'Comienza a aprender y ve contenido nuevo cada mes.',
    characteristics: [
      Characteristic(isActive: true, text: 'Acceso a todos los proyectos'),
      Characteristic(isActive: true, text: 'Acceso a todos los talleres'),
      Characteristic(isActive: true, text: 'Acceso a todos los cursos'),
      Characteristic(isActive: true, text: 'Acceso a Discord'),
    ],
    isSelected: true,
  ),
  CardModel(
    isMostPopular: false,
    price: '500',
    title: 'Básico',
    description: 'Comienza a aprender y ve contenido nuevo cada mes.',
    characteristics: [
      Characteristic(isActive: true, text: 'Acceso a todos los proyectos'),
      Characteristic(isActive: false, text: 'Acceso a todos los talleres'),
      Characteristic(isActive: false, text: 'Acceso a todos los cursos'),
      Characteristic(isActive: false, text: 'Acceso a Discord'),
    ],
    isSelected: false,
  ),
  CardModel(
    isMostPopular: false,
    price: '700',
    title: 'Intermedio',
    description: 'Comienza a aprender y ve contenido nuevo cada mes.',
    characteristics: [
      Characteristic(isActive: true, text: 'Acceso a todos los proyectos'),
      Characteristic(isActive: true, text: 'Acceso a todos los talleres'),
      Characteristic(isActive: false, text: 'Acceso a todos los cursos'),
      Characteristic(isActive: false, text: 'Acceso a Discord'),
    ],
    isSelected: false,
  ),
  CardModel(
    isMostPopular: false,
    price: '1,200',
    title: 'Profesional+',
    description: 'Comienza a aprender y ve contenido nuevo cada mes.',
    characteristics: [
      Characteristic(isActive: true, text: 'Acceso a todos los proyectos'),
      Characteristic(isActive: true, text: 'Acceso a todos los talleres'),
      Characteristic(isActive: true, text: 'Acceso a todos los cursos'),
      Characteristic(isActive: true, text: 'Mentorias personalizadas'),
    ],
    isSelected: false,
  )
];
