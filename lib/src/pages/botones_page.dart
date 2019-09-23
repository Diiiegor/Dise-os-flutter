import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(context),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulos(context),
                  _botonesRedondeados()
                ],
              ),
            )
            ],
        ),
        bottomNavigationBar:_bottomNavigationBar(context)/*BottomNavigationBar(
          fixedColor: Colors.pink,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today),title: Container()),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outlined),title: Container()),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),title: Container()),
          ],
        )*/ ,
    );
  }

  Widget _fondoApp(BuildContext context) {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0)
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0))),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 238, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ],
            ),
            borderRadius: BorderRadius.circular(90.0)
            ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente, 
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
        ],
    );
  }

  Widget _titulos(BuildContext context){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Classify transaction",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0,),
                Text("Classify this transaction into a particular category",style: TextStyle(color: Colors.white,fontSize: 18.0))
              ],
            ),
            width: MediaQuery.of(context).size.width*0.85,
          ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return  Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today,size: 30.0,),title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.bubble_chart,size: 30.0,),title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,size: 30.0,),title: Container()),
      ],),
    );

  }

  Widget _botonesRedondeados(){
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.blue,Icons.border_all,"General"),
            _crearBotonRedondeado(Colors.purpleAccent,Icons.directions_bus,"General")
          ]
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.greenAccent,Icons.menu,"Menu"),
            _crearBotonRedondeado(Colors.orangeAccent,Icons.map,"Rutas")
          ]
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.pinkAccent,Icons.shop,"Coprar"),
            _crearBotonRedondeado(Colors.blueGrey,Icons.zoom_out_map,"Ver detalles")
          ]
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.cyan,Icons.work,"Facturas"),
            _crearBotonRedondeado(Colors.deepOrange,Icons.payment,"Transferir")
          ]
        )
      ],
    );
  }


  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){
    
    
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.70),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono,color: Colors.white,size: 30.0,),
              ),
              Text(texto,style: TextStyle(color: color),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );


  }

}
