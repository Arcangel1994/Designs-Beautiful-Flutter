import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final estiloSubTitulo = TextStyle(
      fontSize: 18.0,
      color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),

          ],
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      height: 250.0,
      child: FadeInImage(
        image: NetworkImage('https://ichef.bbci.co.uk/wwfeatures/live/976_549/images/live/p0/7w/b9/p07wb9xk.jpg'),
        placeholder: AssetImage('assets/original.gif'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return
      SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 30.0,
          ),
          child: Row(
            children: <Widget>[

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Montaña con un lago', style: estiloTitulo,),
                    SizedBox(height: 7.0,),
                    Text('Una Montaña en Suiza', style: estiloSubTitulo,)
                  ],
                ),
              ),

              Icon(Icons.star, color: Colors.pink, size: 30.0,),

              Text('41', style: TextStyle(fontSize: 20.0),)

            ],
          ),
        ),
      );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')

      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return  Column(
      children: <Widget>[
        SizedBox(height: 10.0,),
        Icon(icon, color: Colors.blueAccent, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blueAccent),),
        SizedBox(height: 10.0,)
      ],
    );
  }

  Widget _crearTexto(){
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 10.0
        ),
        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit et mauris tempus laoreet. Ut bibendum ante felis. Suspendisse fringilla lectus elementum nunc hendrerit venenatis. Vivamus molestie convallis sem, ut tristique sem pharetra sed. Quisque non rutrum purus. Curabitur lobortis vitae magna in porttitor. Vestibulum maximus gravida turpis sed cursus. Nunc vehicula, urna id tempor tincidunt, nisi massa pulvinar libero, dapibus tempor eros felis et lacus. Aliquam erat volutpat. In molestie lacinia arcu et gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
        textAlign: TextAlign.justify,));
  }

}
