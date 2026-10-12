import 'dart:io';
import 'dart:math';

void main() {
  int sorteado = Random().nextInt(100) + 1; 
  int min = 1;
  int max = 100;
  int chute = 0;

  while (chute != sorteado) {
    print('Adivinhe o número (entre $min e $max):');
    chute = int.parse(stdin.readLineSync()!);

    if (chute == sorteado) {
      print('Parabéns, você acertou!');
    } else {
      if (chute > sorteado) {
        max = chute;
      } else {
        min = chute;
      }
      print('O número está entre $min e $max');
    }
  }
}
