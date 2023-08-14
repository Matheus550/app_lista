class Produtos {
  //Atributos
  late int id;
  late String nome;
  late String fornecedor;
  late double preco;
  //Construtor
  Produtos(this.id, this.nome, this.fornecedor, this.preco);

  //Métodos
  //Converte Model para Map
  //Ida
  Map<String, dynamic> toMap() {
    // ignore: prefer_collection_literals
    var dados = Map<String, dynamic>();
    dados['id'] = id;
    dados['nome'] = nome;
    dados['fornecedor'] = fornecedor;
    dados['preco'] = preco;
    return dados;
  }

  //Converte Map para Model
  //volta
  Produtos.deMapParaModel(Map<String, dynamic> dados) {
    id = dados[id];
    nome = dados[nome];
    fornecedor = dados[fornecedor];
    preco = dados[preco];
  }
}
