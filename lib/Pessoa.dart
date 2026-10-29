import 'Veiculo.dart';

class Pessoa {
  final String _cpf;
  String _nome;
  String _telefone;
  String _email;
  final List<Veiculo> _veiculos = [];

  Pessoa(this._cpf, this._nome, this._telefone, this._email);

  List<Veiculo> listarVeiculos() => List.unmodifiable(_veiculos);

  void adicionarVeiculo(Veiculo veiculo) => _veiculos.add(veiculo);

  // cpf é final: só getter
  String get cpf => _cpf;

  String get nome => _nome;
  set nome(String value) => _nome = value;

  String get telefone => _telefone;
  set telefone(String value) => _telefone = value;

  String get email => _email;
  set email(String value) => _email = value;

  Map<String, dynamic> toMap() => {
        'cpf': _cpf,
        'nome': _nome,
        'telefone': _telefone,
        'email': _email,
      };

  factory Pessoa.fromMap(Map<String, dynamic> map) => Pessoa(
        map['cpf'] as String,
        map['nome'] as String,
        map['telefone'] as String,
        map['email'] as String,
      );
}
