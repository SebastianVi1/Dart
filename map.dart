void main() {
  List<int> numeros = [1, 2, 3, 4, 5];

  List<int> cuadrados = numeros.map((n) => n * n).toList();

  print(cuadrados); // [1, 4, 9, 16, 25]
}
