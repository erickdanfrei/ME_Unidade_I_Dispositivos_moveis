import 'dart:io';

void main() {
  print('Digite o número de termos:');
  int n = int.parse(stdin.readLineSync()!);
  double s = 0;
  int base = 3;
  int expoenteFatorial = 4;
  int divisor = 5;
  int sinal = 1;

  for (int i = 1; i <= n; i++) {
    int fat = 1;
    for (int j = 1; j <= expoenteFatorial; j++) {
      fat = fat * j;
    }
    
    double pot = 1;
    for (int j = 1; j <= fat; j++) {
      pot = pot * base;
    }
    
    s = s + (sinal * (pot / divisor));
    
    base = base + 2;
    expoenteFatorial = expoenteFatorial + 4;
    divisor = divisor + 5;
    
    if (sinal == 1) {
      sinal = -1;
    } else {
      sinal = 1;
    }
  }
  print('Valor de S: $s');
}
