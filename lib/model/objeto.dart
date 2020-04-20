class Objeto {

  String nomeObjeto;
  String area;
  String icone;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Objeto &&
              runtimeType == other.runtimeType &&
              nomeObjeto == other.nomeObjeto &&
              area == other.area;

  @override
  int get hashCode =>
      nomeObjeto.hashCode ^
      area.hashCode;

  @override
  String toString() {
    return 'Objeto{nomeObjeto: $nomeObjeto, area: $area, icone: $icone}';
  }


}