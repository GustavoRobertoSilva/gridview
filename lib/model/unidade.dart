class Unidade {

  num upfjPfjNum;

  num pfjNum;

  String nomeUnidade;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Unidade &&
              runtimeType == other.runtimeType &&
              upfjPfjNum == other.upfjPfjNum &&
              pfjNum == other.pfjNum;

  @override
  int get hashCode =>
      upfjPfjNum.hashCode ^
      pfjNum.hashCode;

  @override
  String toString() {
    return 'Unidade{upfjPfjNum: $upfjPfjNum, pfjNum: $pfjNum, nomeUnidade: $nomeUnidade}';
  }


}