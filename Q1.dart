void main() {
  const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};
  const ordem = ['ovos', 'chocolate', 'limão']; // Exemplo com limão para testar
  double total = 0.0;

  for (int i = 0; i < ordem.length; i++) {
    String bolo = ordem[i];
    if (boloPrecos.containsKey(bolo)) {
      total = total + boloPrecos[bolo]!;
    } else {
      print('$bolo não está no cardápio');
    }
  }
  print('Total = \$${total}');
}
