import 'package:hello_world/models/person.dart';

final persons = [
  new Person(
    name: 'Аня Иванова',
    birthDay: '07 июля 2002',
    password: 'ivanova2002'
  )
];

Person getRandomPerson() => persons[0];