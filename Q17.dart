import 'dart:io';

List<int> lerVetor(int tamanho, String nome) {
  List<int> v = [];
  print('Lendo vetor $nome:');
  for (int i = 0; i < tamanho; i++) {
    print('Posição $i:');
    v.add(int.parse(stdin.readLineSync()!));
  }
  return v;
}


List<int> somarVetores(List<int> v1, List<int> v2, int tamanho) {
  List<int> v3 = [];
  for (int i = 0; i < tamanho; i++) {
    v3.add(v1[i] + v2[i]);
  }
  return v3;
}

void main() {
  print('Digite o tamanho dos vetores:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> vetorA = lerVetor(n, "A");
  List<int> vetorB = lerVetor(n, "B");

  List<int> vetorC = somarVetores(vetorA, vetorB, n);

  int somaTotal = 0;
  print('Vetor C (Soma de A e B):');
  for (int i = 0; i < n; i++) {
    print(vetorC[i]);
    somaTotal = somaTotal + vetorC[i];
  }

  print('A soma de todos os elementos do 3º vetor é: $somaTotal');
}
