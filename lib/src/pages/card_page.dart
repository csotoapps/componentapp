
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),  
          SizedBox(height: 30.0),
        ],
      ),
    );
  }



  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text('Tree on body of water near mountains'),
            subtitle: Text('Wanaka is a popular ski and summer resort town in the Otago region of the South Island of New Zealand. At the southern end of Lake Wānaka, it is at the start of the Clutha River and is the gateway to Mount Aspiring National Park.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Subscribe'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Email'),
                onPressed: () {},
              )

            ],
          )
        ],
      ),
    );

  }
  
  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://images.unsplash.com/photo-1494500764479-0c8f2919a3d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),


          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(' Wanaka, Otago, New Zealand ')
          )


        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      
    );


  }



}
