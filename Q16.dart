import 'dart:io';

List<int> lerVetorUsuario(int tamanho, int numeroDoVetor) {
  List<int> vetor = [];
  print('Lendo vetor $numeroDoVetor:');
  for (int i = 0; i < tamanho; i++) {
    print('Valor da posição $i:');
    vetor.add(int.parse(stdin.readLineSync()!));
  }
  return vetor;
}

void main() {
  print('Digite o tamanho dos 4 vetores:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> v1 = lerVetorUsuario(n, 1);
  List<int> v2 = lerVetorUsuario(n, 2);
  List<int> v3 = lerVetorUsuario(n, 3);
  List<int> v4 = lerVetorUsuario(n, 4);
  
  List<int> v5 = [];
  List<int> intersecao = []; 

  for (int i = 0; i < n; i++) {
    v5.add(v1[i]);
    v5.add(v2[i]);
    v5.add(v3[i]);
    v5.add(v4[i]);
  }

  for (int i = 0; i < v5.length; i++) {
    for (int j = 0; j < v5.length - 1; j++) {
      if (v5[j] > v5[j + 1]) {
        int temp = v5[j];
        v5[j] = v5[j + 1];
        v5[j + 1] = temp;
      }
    }
  }
  print('\nA) Quinto vetor ordenado:');
  print(v5);

  for (int i = 0; i < v1.length; i++) {
    int numeroAtual = v1[i];
    
    bool achouNoV2 = false;
    bool achouNoV3 = false;
    bool achouNoV4 = false;

    for (int j = 0; j < v2.length; j++) if (v2[j] == numeroAtual) achouNoV2 = true;
    for (int j = 0; j < v3.length; j++) if (v3[j] == numeroAtual) achouNoV3 = true;
    for (int j = 0; j < v4.length; j++) if (v4[j] == numeroAtual) achouNoV4 = true;

    if (achouNoV2 && achouNoV3 && achouNoV4) {
  
      bool jaSalvo = false;
      for(int k = 0; k < intersecao.length; k++){
          if(intersecao[k] == numeroAtual) jaSalvo = true;
      }
      
      if(!jaSalvo){
          intersecao.add(numeroAtual);
      }
    }
  }
  
  print('B) Vetor com a Interseção (elementos presentes nos 4 vetores):');
  print(intersecao);
}
