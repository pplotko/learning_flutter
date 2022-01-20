// task 1 container
//
// Сделать круглый контейнер по центру экрана
// Ширина 50
// В центре контейнера буква "А" размер текста 12
// У контейнера рамочка шириной 2.5
// Сделать контейнер с тенью
// Параметры тени
// Офсет (3,7)
// Блюр 20
// Спред 11
//

import 'package:flutter/material.dart';

circularContainer() {
  return  Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: const Text(
      'A',
      style: TextStyle(
        fontSize: 12,
        color: Color(0xFF000000),
      ),
    ),
    decoration: BoxDecoration(
      border: Border.all(width: 2.5, color: const Color(0xFF04589A)),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFF04589A),
          offset: Offset(3, 7),
          blurRadius: 20,
          spreadRadius: 11,
        ),
      ],
      color: const Color(0xFFFCEE01),
    ),
  );
}