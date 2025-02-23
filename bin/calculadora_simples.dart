import 'dart:convert'; // Biblioteca para lidar com codificação de caracteres
import 'dart:io'; // Biblioteca para entrada/saída de dados via terminal

/// Função principal
void main(List<String> arguments) {
  print("Bem-vindo à calculadora!"); // Mensagem inicial

  // Solicita e captura o primeiro número do usuário
  print("Informe o primeiro número:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  // Solicita e captura o segundo número do usuário
  print("Informe o segundo número:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  // Solicita e captura a operação matemática desejada
  print("Informe a operação matemática desejada (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  // Exibe os valores inseridos pelo usuário
  print("Primeiro número: $numero1");
  print("Segundo número: $numero2");
  print("Operação escolhida: $operacao");

  // Declara a variável que armazenará o resultado da operação
  double resultado = 0;

  // Estrutura condicional para verificar qual operação será realizada
  if (operacao == "+") {
    resultado = numero1 + numero2;
  } else if (operacao == "-") {
    resultado = numero1 - numero2;
  } else if (operacao == "*") {
    resultado = numero1 * numero2;
  } else if (operacao == "/") {
    // Verifica se a divisão por zero não ocorrerá
    if (numero2 != 0) {
      resultado = numero1 / numero2;
    } else {
      print("Erro: divisão por zero não é permitida!");
      exit(0); // Finaliza o programa em caso de erro
    }
  } else {
    print("Operação Inválida!"); // Caso o usuário insira uma operação desconhecida
    exit(0); // Finaliza o programa
  }

  // Exibe o resultado da operação escolhida
  print("O resultado da operação é: $resultado");
}
