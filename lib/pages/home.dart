import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routesapp/main.dart';
import 'package:routesapp/model/BodyModel.dart';
import 'package:routesapp/model/ItemModel.dart';
import 'package:routesapp/model/area_contabil.dart';
import 'package:routesapp/model/empresa.dart';
import 'package:routesapp/model/tipo_requisicao.dart';
import 'package:routesapp/model/unidade.dart';
import 'package:routesapp/repository/menu_repository.dart';
import 'package:routesapp/util/constantes.dart';
import 'package:routesapp/util/widget_utils.dart';

class MainPage extends StatefulWidget {
  Home createState() => Home();
}

class Home extends State<MainPage> {
  MenuRepository _repository = new MenuRepository();
  //
  TipoRequisicao _requisicaoSelected = new TipoRequisicao();
  Empresa _empresaSelected = new Empresa();
  Unidade _unidadeSelected = new Unidade();
  AreaContabil _areaSelected = new AreaContabil();

  bool _showFooter = true;
  num _totalAprovado = 0.00;

  _listDropDowRequisicoes() {
    List<DropdownMenuItem> _dropMenu = new List();
    for (TipoRequisicao tipo in _repository.listaRequisicao()) {
      DropdownMenuItem drop = new DropdownMenuItem(
          value: tipo,
          child: new Text(tipo.descricao,
              style: new TextStyle(color: Colors.black)));
      _dropMenu.add(drop);
    }
    return _dropMenu;
  }

  _listDropDowEmpresas() {
    List<DropdownMenuItem> _dropMenu = new List();
    for (Empresa tipo in _repository.listaEmpresa()) {
      DropdownMenuItem drop = new DropdownMenuItem(
          value: tipo,
          child: new Text(tipo.nomeEmpresa,
              style: new TextStyle(color: Colors.black)));
      _dropMenu.add(drop);
    }
    return _dropMenu;
  }

  _listDropDowUnidades() {
    List<DropdownMenuItem> _dropMenu = new List();
    for (Unidade tipo in _repository.listaUnidade()) {
      DropdownMenuItem drop = new DropdownMenuItem(
          value: tipo,
          child: new Text(tipo.nomeUnidade,
              style: new TextStyle(color: Colors.black)));
      _dropMenu.add(drop);
    }
    return _dropMenu;
  }

  _listDropDowAreasContabeis() {
    List<DropdownMenuItem> _dropMenu = new List();
    for (AreaContabil tipo in _repository.listaAreaContabil()) {
      DropdownMenuItem drop = new DropdownMenuItem(
          value: tipo,
          child: new Text(tipo.descricao,
              style: new TextStyle(color: Colors.black)));
      _dropMenu.add(drop);
    }
    return _dropMenu;
  }

  @override
  Widget build(BuildContext context) {
//    WidgetUtils.init(context);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Aprovações"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _top(),
          _middle(),
          _footer(),
        ],
      ),
    );
  }

  List<ItemModel> prepareData = <ItemModel>[
    ItemModel(header: 'Milk', bodyModel: BodyModel(price: 20, quantity: 10)),
    ItemModel(header: 'Coconut', bodyModel: BodyModel(price: 35, quantity: 5)),
    ItemModel(header: 'Watch', bodyModel: BodyModel(price: 800, quantity: 15)),
    ItemModel(header: 'Cup', bodyModel: BodyModel(price: 80, quantity: 150)),
    ItemModel(header: 'Cup1', bodyModel: BodyModel(price: 80, quantity: 150)),
    ItemModel(header: 'Cup2', bodyModel: BodyModel(price: 80, quantity: 150)),
    ItemModel(header: 'Cup3', bodyModel: BodyModel(price: 80, quantity: 150)),
  ];

  _top() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //Tipo de Requisicoes
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: double.infinity,
              color: Colors.white,
//                child: Text('Anything want on top', textAlign: TextAlign.center,),
              child: _dropDownTiposRequisicoes(),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
                alignment: Alignment.center,
                height: 65.0,
                width: double.infinity,
                color: Colors.white,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                     Text('Empresa', textAlign: TextAlign.start),
                     Text('Unidade', textAlign: TextAlign.start),
                      _dropDownEmpresas(),
                      _dropDownUnidades(),
                    ])
                )
          ),


          Align(
            alignment: Alignment.topCenter,
            child: Container(
                alignment: Alignment.center,
                height: 65.0,
                width: double.infinity,
                color: Colors.white,
                child:
               GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  children: <Widget>[
                      Text('Áreas', textAlign: TextAlign.start),
                      _dropDownAreasContabeis(),
                    ])
                    ),
                ),


          Align(
            alignment: Alignment.topCenter,
            child: Container(
                alignment: Alignment.center,
                height: 45.0,
                width: double.infinity,
                color: Colors.white,
                child:
//                Text(
//                'Anything want on top',
//                textAlign: TextAlign.center,
//              ),
                    ButtonTheme(
//                          minWidth: 200.0,
                        height: 30.0,
                        child: RaisedButton(
                            child: Text("Pesquisar"),
                            color: Colors.blue,
                            onPressed: () {
                              print("Pesquisar");
                            }))),
          )
        ]);
  }

  _middle() {
    return Expanded(
      child: Container(
//              alignment: Alignment.center,
//              color: Colors.red,
//              child: Text(
//                'Anything want in the middle',
//                textAlign: TextAlign.center,
//              ),

        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: prepareData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(seconds: 1),
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'PRICE: ${prepareData[index].bodyModel.price}',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'QUANTITY: ${prepareData[index].bodyModel.quantity}',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        prepareData[index].header,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: prepareData[index].isExpanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  prepareData[index].isExpanded =
                      !prepareData[index].isExpanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  _footer() {
    return Visibility(
      visible: _showFooter,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
//          alignment: Alignment.center,
          height: 50.0,
          width: double.infinity,
          color: Colors.white30,
          child: Row(children: <Widget>[
            Column(
                children: <Widget>[
              Text(
                'Total Aprovar  ',
                textAlign: TextAlign.center,
              ),
            ]),
            Column(
                children: <Widget>[
              Text(
                _totalAprovado.toString(),
                textAlign: TextAlign.center,
              )
            ]),
            Column(
                children: <Widget>[
              ButtonTheme(
//                          minWidth: 200.0,
//                  height: 30.0,
                  child: RaisedButton(
                      child: Text("Aprovar"),
                      color: Colors.blue,
                      onPressed: () {
                        print("Aprovado");
                      }))
            ])
          ]),
        ),
      ),
    );
  }

  _dropDownTiposRequisicoes() {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton<TipoRequisicao>(
//        hint: new Text("Select Language"),
        value: _requisicaoSelected,
        onChanged: (TipoRequisicao newValue) {
          _requisicaoSelected = newValue;
          setState(() {
            _requisicaoSelected = newValue;
          });
        },
//        items: _listDropDowRequisicoes().toList(),
      ),
    );
  }

  _dropDownEmpresas() {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton<Empresa>(
        hint: new Text("Todas"),
        value: _empresaSelected,
        onChanged: (Empresa newValue) {
          setState(() {
            _empresaSelected = newValue;
          });
        },
//        items: _listDropDowRequisicoes().toList(),
      ),
    );
  }

  _dropDownUnidades() {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton<Unidade>(
        hint: new Text("Todas"),
        value: _unidadeSelected,
        onChanged: (Unidade newValue) {
          setState(() {
            _unidadeSelected = newValue;
          });
        },
//        items: _listDropDowRequisicoes().toList(),
      ),
    );
  }

  _dropDownAreasContabeis() {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton<AreaContabil>(
        hint: new Text("Todas"),
        value: _areaSelected,
        onChanged: (AreaContabil newValue) {
          setState(() {
            _areaSelected = newValue;
          });
        },
//        items: _listDropDowRequisicoes().toList(),
      ),
    );
  }
}
