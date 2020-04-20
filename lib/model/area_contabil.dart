class AreaContabil{

  String codigo;

  String descricao;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AreaContabil &&
              runtimeType == other.runtimeType &&
              codigo == other.codigo;

  @override
  int get hashCode => codigo.hashCode;

  @override
  String toString() {
    return 'AreaContabil{codigo: $codigo, descricao: $descricao}';
  }
}