class TipoRequisicao{

  String codigo;

  String descricao;

  TipoRequisicao({this.codigo, this.descricao});

  TipoRequisicao.fromJson(Map<String, dynamic> parsedJson){
    codigo: parsedJson["codigo"] as String;
    descricao: parsedJson["descricao"] as String;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TipoRequisicao &&
              runtimeType == other.runtimeType &&
              codigo == other.codigo;

  @override
  int get hashCode => codigo.hashCode;

  @override
  String toString() {
    return 'TipoRequisicao{codigo: $codigo, descricao: $descricao}';
  }


}