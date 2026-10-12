import 'dart:io';

void main() {
  String matricula = '';
  double somaTurma = 0;
  int totalAlunos = 0;
  int aprovados = 0;
  
  double maiorMediaM = -1;
  String matMaiorM = '';
  double maiorMediaF = -1;
  String matMaiorF = '';
  
  double somaFem = 0;
  int totalFem = 0;

  while (true) {
    print('Digite a matrícula (0000 para sair):');
    matricula = stdin.readLineSync()!;
    if (matricula == '0000') break;

    print('Nome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    
    print('Digite as 3 notas:');
    double n1 = double.parse(stdin.readLineSync()!);
    double n2 = double.parse(stdin.readLineSync()!);
    double n3 = double.parse(stdin.readLineSync()!);
    print('Número de faltas:');
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (n1 + n2 + n3) / 3;
    somaTurma = somaTurma + media;
    totalAlunos++;

    bool aprovado = (media >= 7.0 && faltas <= 18);
    if (aprovado) aprovados++;

    if (sexo == 'M' && aprovado && media > maiorMediaM) {
      maiorMediaM = media;
      matMaiorM = matricula;
    } else if (sexo == 'F') {
      somaFem = somaFem + media;
      totalFem++;
      if (aprovado && media > maiorMediaF) {
        maiorMediaF = media;
        matMaiorF = matricula;
      }
    }
  }

  if (totalAlunos > 0) {
    print('a) Média da turma: ${somaTurma / totalAlunos}');
    print('b) Percentual de aprovados: ${(aprovados / totalAlunos) * 100}%');
    print('c) Matrícula M maior média aprovado: $matMaiorM');
    print('c) Matrícula F maior média aprovado: $matMaiorF');
    if (totalFem > 0) print('d) Média feminino: ${somaFem / totalFem}');
  }
}
