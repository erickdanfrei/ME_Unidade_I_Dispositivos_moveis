import 'dart:io';

void main() {
  print('Digite um número:');
  String numStr = stdin.readLineSync()!;
  String invertido = '';
  
  for (int i = numStr.length - 1; i >= 0; i--) {
    invertido = invertido + numStr[i];
  }
  
  print('Impressão: $invertido');
}
