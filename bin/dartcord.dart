import 'package:dartcord/models/usuario.dart';
import 'package:dartcord/models/moderador.dart';
import 'package:dartcord/models/canal.dart';
import 'package:dartcord/models/mensagem.dart';
import 'package:dartcord/models/servidor.dart';

void main() {
  final yasmim = Usuario(
    nome: 'Yasmim Síria',
    apelido: 'Síria',
    online: true,
  );

  final lucas = Moderador(
    nome: 'Lucas',
    apelido: 'Luke',
    online: true,
  );

  final geral = Canal(nome: 'geral');
  final dart = Canal(nome: 'dart');
  final flutter = Canal(nome: 'flutter');

  final mensagem1 = Mensagem(
    autor: yasmim,
    texto: 'Olá, pessoal!',
  );

  final mensagem2 = Mensagem(
    autor: lucas,
    texto: 'Bem-vindos ao DartCord!',
  );

  dart.adicionarMensagem(mensagem1);
  dart.adicionarMensagem(mensagem2);

  final servidor = Servidor(
    nome: 'Programação Mobile',
  );

  servidor.adicionarUsuario(yasmim);
  servidor.adicionarUsuario(lucas);

  servidor.adicionarCanal(geral);
  servidor.adicionarCanal(dart);
  servidor.adicionarCanal(flutter);

  servidor.gerarRelatorio('dart');
}