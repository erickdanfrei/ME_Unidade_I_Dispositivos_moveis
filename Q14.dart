import 'dart:io';

void main() {
  print('Digite o tamanho dos vetores:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> vetor1 = [];
  List<int> vetor2 = [];
  List<int> vetor3 = [];

  print('--- Lendo o primeiro vetor ---');
  for (int i = 0; i < n; i++) {
    print('Digite o número ${i + 1}:');
    int num = int.parse(stdin.readLineSync()!);
    vetor1.add(num);
    vetor3.add(num); 
  }

  print('--- Lendo o segundo vetor ---');
  for (int i = 0; i < n; i++) {
    print('Digite o número ${i + 1}:');
    int num = int.parse(stdin.readLineSync()!);
    vetor2.add(num);
    vetor3.add(num); 
  }

  for (int i = 0; i < vetor3.length; i++) {
    for (int j = 0; j < vetor3.length - 1; j++) {
      if (vetor3[j] > vetor3[j + 1]) {
        int aux = vetor3[j];
        vetor3[j] = vetor3[j + 1];
        vetor3[j + 1] = aux;
      }
    }
  }

  print('Terceiro vetor ordenado gerado a partir dos dois:');
  for (int i = 0; i < vetor3.length; i++) {
    print(vetor3[i]);
  }
}
