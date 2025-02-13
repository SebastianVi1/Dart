import 'dart:io';

Future<String> readFileAsync(String adress) async {
  final file = File(adress);
  final content = await file.readAsString();
  return content.trim();
}

void main() async {

  final fileData = await readFileAsync('Exercises/file.txt');
  print(fileData);
}

