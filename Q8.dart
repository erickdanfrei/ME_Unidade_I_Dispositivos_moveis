import 'dart:io';

void main() {
  int totalM = 0;
  int totalF = 0;
  int total = 0;
  
  double menorPontoM = 99999;
  String nomeMenorM = '';
  
  double maiorPontoSI_M = -1;
  String codMaiorSI_M = '';

  while (true) {
    print('Código do candidato (0000 para sair):');
    String cod = stdin.readLineSync()!;
    if (cod == '0000') break;

    print('Curso (CC ou SI):');
    String curso = stdin.readLineSync()!.toUpperCase();
    print('Nome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    print('Pontuação (0-5000):');
    double pontos = double.parse(stdin.readLineSync()!);

    total++;
    if (sexo == 'M') totalM++;
    if (sexo == 'F') totalF++;

    if (curso == 'CC' && pontos > 2500) {
      print('A) CC mais de 2500: $cod - $nome - $pontos pontos');
    }

    if (sexo == 'M') {
      if (pontos < menorPontoM) {
        menorPontoM = pontos;
        nomeMenorM = nome;
      }
      if (curso == 'SI' && pontos > maiorPontoSI_M) {
        maiorPontoSI_M = pontos;
        codMaiorSI_M = cod;
      }
    }
  }

  print('B) Nome masc menor pontuação: $nomeMenorM');
  print('C) Código masc maior pontuação SI: $codMaiorSI_M');
  if (total > 0) {
    print('D) % Masculino: ${(totalM / total) * 100}%');
    print('D) % Feminino: ${(totalF / total) * 100}%');
  }
}
