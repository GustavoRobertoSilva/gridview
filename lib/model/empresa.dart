class Empresa {

  num upfjPfjNum;

  String nomeEmpresa;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Empresa &&
              runtimeType == other.runtimeType &&
              upfjPfjNum == other.upfjPfjNum;

  @override
  int get hashCode => upfjPfjNum.hashCode;

  @override
  String toString() {
    return 'Empresa{upfjPfjNum: $upfjPfjNum, nomeEmpresa: $nomeEmpresa}';
  }

}