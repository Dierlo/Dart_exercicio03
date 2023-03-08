// 1° exercico

import 'dart:io';

void main() {
  List<int> N =
      List.filled(10, 0); // Cria um vetor de 10 posiço~es preenchido com 0

  stdout.write("Digite um valor: ");
  int valor =
      int.parse(stdin.readLineSync()!); // Lê o valor digitando pelo usuário

  N[0] = valor; // Coloca o valor  lido na primeira posição do vetor

  for (int i = 1; i < N.length; i++) {
    N[i] = N[i - 1] *
        2; // Preenche as demais posições com o dobor do valor da posição anterior
  }

  // exibe o vetor com a explicação de cada posição
  for (int i = 0; i < N.length; i++) {
    print("N[$i] = ${N[i]}");
  }
  main2();
}
// 2° Exercicio

void main2() {
  List<double> N =
      List.filled(100, 0); // Cria um vetor de 100 posições preenchido com 0.0

  stdout.write("Digite um valor: ");
  double valor =
      double.parse(stdin.readLineSync()!); // Lê o valor digitado pelo usuário

  N[0] = valor; // Coloca o valor lido na primeira posição do vetor

  for (int i = 1; 1 < N.length; i++) {
    N[i] = N[i - 1] / 2; // preenche as demais posições com a metade do valor da posição anterios
  }

  // Exibe o vetor com a exlpicação de cada posição
  for (int i = 0; i < N.length; i++) {
    print("N[$i] = ${N[i].toStringAsFixed(4)}");
  }
  main3();
}

// 3° Exercicio

void main3() {
  List<int> pares = []; // Cria um vetor vazio para os valores pares
  List<int> impares = []; // Cria um vetor vazio para os valores ímpares

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1}º valor: ");
    int valor =
        int.parse(stdin.readLineSync()!); // Lê um valor digitado pelo usuário

    if (valor % 2 == 0) {
      pares.add(valor); // Adiciona o valor ao vetor de pares se for par
    } else {
      impares.add(valor); // Adiciona o valor ao vetor de ímpares se for ímpar
    }
  }

  // Exibe os vetores com uma linha explicando cada um
  print("Valores pares: ${pares.join(", ")}");
  print("Valores ímpares: ${impares.join(", ")}");

  main4();
}

// 4° exercicio

void main4() {
  List<int> vetor = List.filled(100, 0); // Cria um vetor de 100 elementos

  // Lê os valores do vetor
  for (int i = 0; i < 100; i++) {
    stdout.write("Digite o valor para a posição $i: ");
    vetor[i] = int.parse(stdin.readLineSync()!);
  }

  // Busca e exibe as posições com valores menores ou iguais a 10
  print("Posições com valores menores ou iguais a 10: ");
  for (int i = 0; i < 100; i++) {
    if (vetor[i] <= 10) {
      print("Posição $i: $vetor[i]}");
    }
  }
}
