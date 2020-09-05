class pedido{
  int id = 0;
  String produto = "";
  String nome = "";
  double preco = 0;
  String formadepagamento = "";
  String endereco = "";
  String data = "";
  String telefone = "";
  String observacoes = "";
  int estagio = 0;

  pedido({
    this.id,
    this.produto,
    this.nome,
    this.preco,
    this.formadepagamento,
    this.endereco,
    this.data,
    this.telefone,
    this.observacoes,
    this.estagio,
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'produto': produto,
      'nome': nome,
      'preco': preco,
      'formadepagamento': formadepagamento,
      'endereco': endereco,
      'data': data,
      'telefone': telefone,
      'observacoes': observacoes,
      'estagio': estagio,
    };
  }

}