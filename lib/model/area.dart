import 'package:routesapp/model/objeto.dart';

class Area{

  String nomeArea;
  String icone;
  List<Objeto> objetos = new List();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Area &&
              runtimeType == other.runtimeType &&
              nomeArea == other.nomeArea;

  @override
  int get hashCode => nomeArea.hashCode;

  @override
  String toString() {
    return 'Area{nomeArea: $nomeArea, icone: $icone, objetos: $objetos}';
  }


}