import 'package:routesapp/model/area.dart';
import 'package:routesapp/model/area.dart' as prefix0;
import 'package:routesapp/model/area_contabil.dart';
import 'package:routesapp/model/empresa.dart';
import 'package:routesapp/model/objeto.dart';
import 'package:routesapp/model/requisicao.dart';
import 'package:routesapp/model/tipo_requisicao.dart';
import 'package:routesapp/model/unidade.dart';

class MenuRepository {


  List<Area> areas(){

    List<Area> areas = new List();

    Area area = new Area();
    area.nomeArea = 'Industrial';
    area.icone = 'Industria';

    List<Objeto> objetos = new List();
    Objeto objeto = new Objeto();
    objeto.nomeObjeto = 'PI0001';
    objeto.icone = 'Grafico';
    objetos.add(objeto);

    objeto = new Objeto();
    objeto.nomeObjeto = 'PI0002';
    objeto.icone = 'Carro';
    objetos.add(objeto);

    area.objetos.addAll(objetos);

    areas.add(area);

    Area phArea = new Area();
    phArea.nomeArea = 'Industrial';
    phArea.icone = 'Industria';

    List<Objeto> objetosPh = new List();

    Objeto objetoPH = new Objeto();
    objetoPH.nomeObjeto = 'PH0001';
    objetoPH.icone = 'Grafico';
    objetosPh.add(objetoPH);

    objetoPH = new Objeto();
    objetoPH.nomeObjeto = 'PH0002';
    objeto.icone = 'Laranja';
    objetosPh.add(objetoPH);

    phArea.objetos.addAll(objetosPh);

    areas.add(phArea);

    return areas;
  }

  List<Objeto> listaObjetos(){

    List<Objeto> objetosPh = new List();

    Objeto objetoPH = new Objeto();
    objetoPH.nomeObjeto = 'PH0001';
    objetoPH.icone = 'Grafico';
    objetosPh.add(objetoPH);

    objetoPH = new Objeto();
    objetoPH.nomeObjeto = 'PH0002';
    objetoPH.icone = 'Laranja';
    objetosPh.add(objetoPH);

    return objetosPh;
  }

  List<TipoRequisicao> listaRequisicao() {

    List<TipoRequisicao> lista = new List();

    TipoRequisicao tipo = new TipoRequisicao();
    tipo.codigo = "rc";
    tipo.descricao = "Requisição de Compra";

    lista.add(tipo);

    return lista;

  }

  List<Empresa> listaEmpresa() {

    List<Empresa> lista = new List();

    Empresa tipo = new Empresa();
    tipo.upfjPfjNum = 1;
    tipo.nomeEmpresa = "Empresa 1";

    lista.add(tipo);

    return lista;

  }

  List<Unidade> listaUnidade() {

    List<Unidade> lista = new List();

    Unidade tipo = new Unidade();
    tipo.upfjPfjNum = 1;
    tipo.pfjNum = 1;
    tipo.nomeUnidade = "Unidade 1";

    lista.add(tipo);

    return lista;

  }

  List<AreaContabil> listaAreaContabil() {

    List<AreaContabil> lista = new List();

    AreaContabil tipo = new AreaContabil();
    tipo.codigo = '1';
    tipo.descricao = "Area Contabil 1";

    lista.add(tipo);

    return lista;
  }


  List<Requisicao> listaRequisicoes() {

    List<Requisicao> lista = new List();

    Requisicao tipo = new Requisicao();
    tipo.areaContabil = "Area 1";
    tipo.descricao = "Area Contabil 1";
    tipo.valor = 1.95;
    tipo.detalhe = "Detalhes 1";

    lista.add(tipo);

    tipo = new Requisicao();
    tipo.areaContabil = "Area 2";
    tipo.descricao = "Area Contabil 2";
    tipo.valor = 0.95;
    tipo.detalhe = "Detalhes 2";

    lista.add(tipo);

    return lista;
  }



  }