import 'dart:io';

void main() {
  print('Quantos bois deseja cadastrar?');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];
  List<double> pesos = [];


  for (int i = 0; i < n; i++) {
    print('Digite o número de identificação do boi ${i + 1}:');
    numeros.add(int.parse(stdin.readLineSync()!));
    
    print('Digite o peso do boi ${i + 1}:');
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  while (true) {
    print('\n--- Menu de Pesquisa ---');
    print('Deseja fazer uma pesquisa de peso? (S/N)');
    String opcao = stdin.readLineSync()!.toUpperCase();
    if (opcao == 'N') break; // Sai do laço infinito

    print('Digite o limite MÍNIMO do peso:');
    double min = double.parse(stdin.readLineSync()!);
    print('Digite o limite MÁXIMO do peso:');
    double max = double.parse(stdin.readLineSync()!);

    bool achouBoi = false;
    print('Bois encontrados no intervalo digitado:');
    
    for (int i = 0; i < n; i++) {
      if (pesos[i] >= min && pesos[i] <= max) {
        print('Boi Nº ${numeros[i]} - Peso: ${pesos[i]} kg');
        achouBoi = true;
      }
    }
    
    if (!achouBoi) {
      print('Nenhum boi atende a esse critério de peso.');
    }
  }
}
