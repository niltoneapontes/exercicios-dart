class Pessoa {
  late String nome;
  late String _cpf;

  set cpf(String cpf) {
    this._cpf = cpf;
  }

  String get cpf {
    return _cpf;
  }
}
