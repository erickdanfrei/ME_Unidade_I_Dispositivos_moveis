import 'dart:io';

void main() {
  print('Digite o tamanho do vetor:');
  int n = int.parse(stdin.readLineSync()!);
  List<int> vetor = [];

  for (int i = 0; i < n; i++) {
    print('Digite o número ${i + 1}:');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  List<int> verificados = []; 

  for (int i = 0; i < vetor.length; i++) {
    int atual = vetor[i];
    
    bool jaVerificou = false;
    for (int k = 0; k < verificados.length; k++) {
      if (verificados[k] == atual) jaVerificou = true;
    }

    if (!jaVerificou) {
      int contagem = 0;
      for (int j = 0; j < vetor.length; j++) {
        if (vetor[j] == atual) {
          contagem++;
        }
      }
      print('$atual - $contagem');
      verificados.add(atual);
    }
  }
}
