import 'package:flutter/widgets.dart';

class Ambo {
  int id;
  String nombre;
  String categoria;
  String imagen;

  Ambo(this.id, this.nombre, this.categoria, this.imagen);

  /*static List<Ambo> getAmbos() {
    List<Ambo> ambos = [];
    ambos.add(Ambo(1, 'Teodora Carmin', 'Arciel',
        
        ('assets/img/Mujer_Arciel/Teodora_Carmin.jpg')));
    ambos.add(Ambo(2, 'Teodora', 'Arciel',
        
        ('assets/img/Mujer_Arciel/Teodora.png')));
    ambos.add(Ambo(3, 'Teodora Paris', 'Arciel',
        
        ('assets/img/Mujer_Arciel/Teodora_Paris.png')));
    ambos.add(Ambo(4, 'Teodora Carmin', 'Arciel',
        
        ('assets/img/Mujer_Arciel/Teodora_Carmin.jpg')));
    ambos.add(Ambo(5, 'Juanita Izzie', 'Arciel',
        
        ('assets/img/Mujer_Arciel/Juanita_Izzie.jpg')));

    ambos.add(Ambo(6, 'Jacar Black Camo', 'Spandex',
        
        ('assets/img/mujer_spandex/Jacar_Black_Camo.jpg')));
    ambos.add(Ambo(7, 'Juanita Grey', 'Spandex',
        
        ('assets/img/mujer_spandex/Juanita_Grey.jpg')));
    ambos.add(Ambo(8, 'Juanita Harley Comodin', 'Spandex',
        
        ('assets/img/mujer_spandex/Juanita_Harley_Comodin.jpg')));

    ambos.add(Ambo(
        9, 'Donato', 'Hombre', 
        ('assets/img/hombre/Donato.png')));
    ambos.add(Ambo(10, 'Donato Blue', 'Hombre',
        
        ('assets/img/hombre/DonatoBlue.jpg')));
    ambos.add(
        Ambo(11, 'Ema', 'Hombre', 
        ('assets/img/hombre/Ema.png')));
    ambos.add(Ambo(12, 'Ema Cyan', 'Hombre',
        
        ('assets/img/hombre/EmaCyan.jpg')));
    return ambos;
  }*/

  static List<Ambo> getAmbos() {
    List<Ambo> ambos = [];
    ambos.add(Ambo(1, 'Teodora Carmin', 'Arciel',
        ('assets/img/Mujer_Arciel/Teodora_Carmin.jpg')));
    ambos.add(
        Ambo(2, 'Teodora', 'Arciel', ('assets/img/Mujer_Arciel/Teodora.png')));
    ambos.add(Ambo(3, 'Teodora Paris', 'Arciel',
        ('assets/img/Mujer_Arciel/Teodora_Paris.png')));
    ambos.add(Ambo(4, 'Teodora Carmin', 'Arciel',
        ('assets/img/Mujer_Arciel/Teodora_Carmin.jpg')));
    ambos.add(Ambo(5, 'Juanita Izzie', 'Arciel',
        ('assets/img/Mujer_Arciel/Juanita_Izzie.jpg')));

    ambos.add(Ambo(6, 'Jacar Black Camo', 'Spandex',
        ('assets/img/mujer_spandex/Jacar_Black_Camo.jpg')));
    ambos.add(Ambo(7, 'Juanita Grey', 'Spandex',
        ('assets/img/mujer_spandex/Juanita_Grey.jpg')));
    ambos.add(Ambo(8, 'Juanita Harley Comodin', 'Spandex',
        ('assets/img/mujer_spandex/Juanita_Harley_Comodin.jpg')));

    ambos.add(Ambo(9, 'Donato', 'Hombre', ('assets/img/hombre/Donato.png')));
    ambos.add(Ambo(
        10, 'Donato Blue', 'Hombre', ('assets/img/hombre/DonatoBlue.jpg')));
    ambos.add(Ambo(11, 'Ema', 'Hombre', ('assets/img/hombre/Ema.png')));
    ambos
        .add(Ambo(12, 'Ema Cyan', 'Hombre', ('assets/img/hombre/EmaCyan.jpg')));
    return ambos;
  }
}
