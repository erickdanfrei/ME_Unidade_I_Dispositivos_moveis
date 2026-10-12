import 'dart:io';

void main() {
  print('Digite o valor de X:');
  double x = double.parse(stdin.readLineSync()!);
  print('Digite o número de termos:');
  int n = int.parse(stdin.readLineSync()!);

  double s = 0;
  int expoente = 2;
  int baseFatorial = 1;
  bool subindo = true; 
  for (int i = 0; i < n; i++) {
    double potencia = 1;
    for (int j = 0; j < expoente; j++) {
      potencia = potencia * x;
    }
    int fatorial = 1;
    for (int j = 1; j <= baseFatorial; j++) {
      fatorial = fatorial * j;
    }
    s = s + (potencia / fatorial);
    expoente++;

    if (subindo) {
      baseFatorial++;
      if (baseFatorial == 4) subindo = false; // Chegou no 4, manda descer
    } else {
      baseFatorial--;
      if (baseFatorial == 1) subindo = true;  // Chegou no 1, manda subir
    }
  }

  print('Valor da série Y: $s');
}
