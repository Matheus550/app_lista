// ignore_for_file: file_names, unused_element

import 'package:sqflite/sqflite.dart';

class ProdutosHelpers {
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
}
