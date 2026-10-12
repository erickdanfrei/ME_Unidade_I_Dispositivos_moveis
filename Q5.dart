import 'dart:io';

void main() {
  int total = 0;
  int baixo = 0;
  int normal = 0;
  int alto = 0;
  
  double maiorPesoF = -1;
  String nomeMaiorF = '';

  print('Quantos recém-nascidos vai cadastrar?');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('Nome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    print('Peso (kg):');
    double peso = double.parse(stdin.readLineSync()!);

    String classificacao = '';
    if (peso <= 2.0) {
      classificacao = 'Baixo Peso';
      baixo++;
    } else if (peso <= 4.0) {
      classificacao = 'Normal';
      normal++;
    } else {
      classificacao = 'Alto Peso';
      alto++;
    }
    
    total++;
    print('A) Nome: $nome | Sexo: $sexo | Classificação: $classificacao');

    if (sexo == 'F' && peso > maiorPesoF) {
      maiorPesoF = peso;
      nomeMaiorF = nome;
    }
  }

  print('B) Recém-nascido feminino com maior peso: $nomeMaiorF');
  print('C) Percentual Baixo Peso: ${(baixo / total) * 100}%');
  print('C) Percentual Normal: ${(normal / total) * 100}%');
  print('C) Percentual Alto Peso: ${(alto / total) * 100}%');
}
