import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ScrollPage extends StatelessWidget {
  final pagecontroller=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
        scrollDirection:Axis.vertical ,
        controller: pagecontroller,
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _crearTextos()
      ],
    );
  }


  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTextos(){

    final estiloTexto=TextStyle(color: Colors.white,fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('11°',style: estiloTexto),
          Text('Miercoles',style: estiloTexto),
          Expanded(child: Container(),),
          IconButton(
            iconSize: 70.0,
            icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
            onPressed: (){
            pagecontroller.animateToPage(1,duration: Duration(milliseconds: 500),curve:Curves.linear );
            },
          )
        ],
      ),
    );
  }


  Widget _pagina2(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
            child: Text('BienVenido',style: TextStyle(fontSize: 20.0),),
          ),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: (){},          
          ),
      ),
    );
  }



}