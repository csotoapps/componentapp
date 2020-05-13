

// Para leer el arch json necesito un pack propio que viene en services
// exponemos un pack o obj del services.dart y asi hacer visible rootBundle
// el rootBundle tiene lo que necesito para leer ese json
//import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';  // func dentro del obj json



class _MenuProvider {

  List<dynamic> opciones = []; // es una lista
  
  _MenuProvider(){ //defino el Constructor, se ejectua una sola vez
    //cargarData(); // llamo a un met y ya no es necesario cargarData porque ya estamos usando el Future
  }
    /*return ListView(
      children: _listaItems(),
    );
  } */



 Future<List<dynamic>> cargarData() async {  // que cargarData se espere a que resp = await responda antes de finalizar su constructor
                                             // las func async siempre retornan un Future
   final resp = await rootBundle.loadString('data/menu_opts.json') ;// paq del json donde esta el path donde
                                            // se encuentra mi arch estático y regresa un future

      Map dataMap = json.decode( resp ); // trans la resp en un map para poder procesarla
    
      //print( dataMap['rutas'] );  
      
      opciones = dataMap['rutas'];    // (resp) aqui esta el string de la data

      return opciones;
  } 

}

final menuProvider = new _MenuProvider(); // instancia de _MenuProvider
                                          // el arch menu_provider.dart solo
                                          // esta exp la instan creada del 
                                          //_MenuProvider, solo esta se puede utilizar
                                        
