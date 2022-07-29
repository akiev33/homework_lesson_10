import 'dart:io';

import 'package:homework_lesson_10/homework_lesson_10.dart'
    as homework_lesson_10;

void main() {
  //1
  List<int> a1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  // создал сет, чтобы убрать дубликаты
  Set<int> c1 = {};
  //первый цикл, прохожусь по индексам массива а1
  for (int i = 0; i < a1.length; i++) {
    // прохожусь по индексам b1
    for (int j = 0; j < b1.length; j++) {
      // сравниваю все элементы a1 c элементами b2
      if (a1[i] == b1[j]) {
        // если есть похожие добавляю в c1, который является Set и убирает дубликаты
        c1.add(a1[i]);
      }
    }
  }
  print(c1);

  //2
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b = [];
  int i = 0;
  // если у значение от деления 2, нет остатка, значит значение четное
  while (i < a.length) {
    if (a[i] % 2 == 0) {
      //добавление в пустой массив
      b.add(a[i]);
    }
    i++;
  }
  print(b);

  //3
  search();
}

//3
search() {
  print('какую букву найти?');
  String first_objects = stdin.readLineSync()!;
  print('в каком предложении?');
  String second_objects = stdin.readLineSync()!;

  int i = 0;
  int count = 0;
  //цикл идет до длины обьекта
  while (i < second_objects.length) {
    if (second_objects[i].contains(first_objects)) {
      // если первый обьект имеет значение во втором, счетчик +1
      count += 1;
    }
    i++;
  }
  print(count);
}
