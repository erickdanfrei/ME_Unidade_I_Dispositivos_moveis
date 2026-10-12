import 'dart:io';

void main() {
  int contF = 0;
  int contM = 0;

  double somaIdadeMExp = 0;
  int contMExp = 0;

  int contMMaior45 = 0;
  int contFMenor30Exp = 0;

  int menorIdadeFExp = 999;
  String nomeMenorIdadeFExp = '';

  while (true) {
    print('Nome do candidato (ou FIM para sair):');
    String nome = stdin.readLineSync()!;
    if (nome == 'FIM') break;

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Tem experiência? (S/N):');
    String exp = stdin.readLineSync()!.toUpperCase();

    if (sexo == 'M') {
      contM++;
      if (exp == 'S') {
        somaIdadeMExp = somaIdadeMExp + idade;
        contMExp++;
      }
      if (idade > 45) {
        contMMaior45++;
      }
    } else if (sexo == 'F') {
      contF++;
      if (idade < 30 && exp == 'S') {
        contFMenor30Exp++;
      }
      if (exp == 'S' && idade < menorIdadeFExp) {
        menorIdadeFExp = idade;
        nomeMenorIdadeFExp = nome;
      }
    }
  }

  print('A) Número de mulheres: $contF | Número de homens: $contM');
  if (contMExp > 0) {
    print('B) Idade média dos homens com experiência: ${somaIdadeMExp / contMExp}');
  }
  if (contM > 0) {
    print('C) Porcentagem de homens > 45 anos: ${(contMMaior45 / contM) * 100}%');
  }
  print('D) Mulheres < 30 anos com experiência: $contFMenor30Exp');
  if (menorIdadeFExp != 999) {
    print('E) Mulher mais jovem com experiência: $nomeMenorIdadeFExp');
  }
}
