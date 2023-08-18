// ignore_for_file: file_names, unused_element
import 'dart:core';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ProdutosHelpers {
  //Atributos
  static late Database _database;

  //Tabela
  String nomeTabela = 'tb_produtos';

  String colunaId = 'id';
  String colunaNome = 'Nome';
  String colunaForn = 'fornecedor';
  String colunaPreco = 'preco';

  //metodo Criar Banco de dados
  void _criarBanco(Database db, int version) async {
    String sql = """CREATE TABLE $nomeTabela(
        $colunaId INTEGER PRIMARY KEY AUTOINCREMENT,
        $colunaNome Text,
        $colunaForn Text,
        $colunaPreco float,)""";
    await db.execute(sql);
  }

  //Metodo iniciar Banco de dados

  Future<Database> incializaBanco() async {
    // pagar o caminho antroid/ios para salvar o banco de dados
    Directory directory = await getApplicationCacheDirectory();
    String caminho = directory.path + "bd_produto.db";

    var bancodedados = openDatabase(caminho, version: 1, onCreate: _criarBanco);
    return bancodedados;
  }
  //Criar o metodo para ver se o banco foi inicializado

  Future<Database> get database async {
    if (_database == null) {
      _database == await incializaBanco();
    }
    return _database;
  }
}
