class Requisicao {

  num rcnum;
  String areaContabil;
  String descricao;
  String detalhe;
  num valor;
  bool aprovar;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Requisicao &&
              runtimeType == other.runtimeType &&
              rcnum == other.rcnum;

  @override
  int get hashCode => rcnum.hashCode;

  @override
  String toString() {
    return 'Requisicao{rcnum: $rcnum, areaContabil: $areaContabil, descricao: $descricao, detalhe: $detalhe, valor: $valor, aprovar: $aprovar}';
  }

}