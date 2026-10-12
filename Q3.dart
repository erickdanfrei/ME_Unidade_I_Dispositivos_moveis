import 'dart:io';

void main() {
  print('Digite o número de termos:');
  int n = int.parse(stdin.readLineSync()!);
  
  int seq1 = 15;
  int seq2 = 100;
  int seq3 = 2;
  
  for (int i = 1; i <= n; i++) {
    int resto = i % 3;
    if (resto == 1) {
      print(seq1);
      if (i > 1) {
          seq1 = seq1 + 5; 
      } else {
          seq1 = 10;
      }
    } else if (resto == 2) {
      print(seq2);
      seq2 = seq2 - 10;
    } else if (resto == 0) {
      print(seq3);
      seq3 = seq3 * 2;
    }
  }
}
