import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco']; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()   //llamo al met
        children: _crearItemsCorta() //llamo al met
      ),
    );
  }


  /*
  List<Widget> _crearItems() { //met regresa una list de 
                               // widg que esta esp el children
      List<Widget> lista = List<Widget>();  //def la lista q voy a retornar 
      for (String opt in opciones) {
        
        final tempWidget = ListTile( //def la var, cont lo q nec mostrar LisTile
           title: Text( opt ),       //title recibe el text
        );

        lista..add( tempWidget ) //obt la nueva colecc de widgets osea tempWidget
             ..add( Divider( color: Colors.blue ) );
        
      }                          

    return lista;                         
  } */


  List<Widget> _crearItemsCorta() { 

    return opciones.map( ( item ) {  // se regresa una nueva lista
                                   //dond c/u de lo elem pasa por la func(({item})) 
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon( Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_right),
            onTap:() {} ,
          ), 
          Divider( color: Colors.blue)
        ],
      );
      
      

    }).toList();   // la var widgets la convierto en una lista de Widgets 
                   // xq era iterable

  }   



}