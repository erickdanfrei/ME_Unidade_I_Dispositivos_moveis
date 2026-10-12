import 'dart:io';

void main() {
  double somaM = 0;
  int contM = 0;
  double somaF = 0;
  int contF = 0;

  while (true) {
    print('Código do Professor (9999 para sair):');
    String cod = stdin.readLineSync()!;
    if (cod == '9999') break;

    print('Nome:');
    String nome = stdin.readLineSync()!;
    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();
    print('Horas de aula no mês:');
    int horas = int.parse(stdin.readLineSync()!);

    double bruto = horas * 12.30;
    double liquido = 0;

    if (sexo == 'M') {
      liquido = bruto - (bruto * 0.10); 
      somaM = somaM + liquido;
      contM++;
    } else {
      liquido = bruto - (bruto * 0.05); 
      somaF = somaF + liquido;
      contF++;
    }

    print('Código: $cod | Nome: $nome | Bruto: R\$ $bruto | Líquido: R\$ $liquido');
  }

  if (contM > 0) print('Média salário líquido M: R\$ ${somaM / contM}');
  if (contF > 0) print('Média salário líquido F: R\$ ${somaF / contF}');
}
