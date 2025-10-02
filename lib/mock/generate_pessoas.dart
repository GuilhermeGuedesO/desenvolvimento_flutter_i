import 'package:desenvolvimento_flutter_i/models/pessoa.dart';
import 'package:faker/faker.dart';

List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();
  List.generate(
    quantidade,
    (index) => Pessoa(
      index,
      faker.person.name(),
      faker.randomGenerator.integer(300,min: 58),
      faker.randomGenerator.decimal(min: 50, scale: 235),
    ),
  );
  return [];
}
