class Produto {
  late String nome;
  late double preco;
}

class User {
  late String nome;
  late int idade;

  User(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class Loja {
  late String nome;
  late int codigo;

  // Loja({required this.nome, this.codigo = 0}); // depende da ordem dos  (parametros posicionais)
  Loja(
      {required this.nome,
      this.codigo =
          0}); // independe da ordem dos parametros (parametros nomeados)

  // OBS.: Para lidar com o NullSafety, poderíamos também colocar uma interrogação
  // após o tipo da variável... Ex.: String? nome ou ainda dar um valor padrão String nome = ''
}

main() {
  int c = 3;
  // c = 'Oi'; // dá erro
  print('Hello World');
  var names = ['Bia', 'Mari', 'Carlos', 'Joao']; // array
  print('Length do array = ${names.length}');
  // var issoEhUmSet = {0, 1, 2, 3, 4, 5, 6, 6, 6}; // nao aceita repeticao
  Set<int> issoEhUmSet = {0, 1, 2, 3, 4, 5, 6, 6, 6}; // nao aceita repeticao
  print('Length do set = ${issoEhUmSet.length}');

  Map<String, double> notasDosAlunos = {'Ana': 9.7, 'Bia': 6.0, 'Carlos': 7.75};

  for (var chave in notasDosAlunos.keys) {
    print('Chave = $chave');
  }

  for (var value in notasDosAlunos.values) {
    print('Value = $value');
  }

  for (var registro in notasDosAlunos.entries) {
    print('Nota de ${registro.key} = ${registro.value}');
  }

  dynamic x = 'Teste'; // usando dynamic, a tipagem do Dart acaba "sumindo"
  x = 123; // consigo mudar o tipo
  x = true; // consigo mudar o tipo

  final b = 3;
  // b = 6 // não funciona

  const d = 5;
  // c = 7 // também não funciona

  /* Const otimiza o runtime (?) 
  Preciso estudar */

  soma(int a, int b) {
    return a + b;
  }

  print('O valor da soma eh: ${soma(2, 3)}');

  int exec(int a, int b, int Function(int, int) fn) {
    return fn(a, b);
  }

  final r = exec(4, 5, (a, b) => a * b);
  print('O resultado eh: $r');

  var p1 = new Produto();
  p1.nome = 'Cadeira gamer';
  p1.preco = 300.99;

  print(
      'Informações do produto: \n\   Nome: ${p1.nome}\n   Preço: ${p1.preco}');

  var comprador =
      User('Nilton', 27); // não preciso colocar o "new" se tem Construtor
  print('Usuário ${comprador.nome} tem ${comprador.idade} anos.');

  var loja = Loja(nome: 'Centro', codigo: 999);
  print('Loja cadastrada: ${loja.nome} - ${loja.codigo}');
}
