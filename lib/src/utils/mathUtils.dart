double biggestValueOn(List<double> itens) {
  if (itens.isEmpty) return double.minPositive;

  double value = 0;

  itens.forEach((element) {
    if (element > value) value = element;
  });

  return value;
}
