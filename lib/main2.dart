import 'package:flutter/material.dart';

class Variado {
  final String nombre;
  final String precio;
  final String imagen;

  Variado({required this.nombre, required this.precio, required this.imagen});
}

List<Variado> VariadosList = [
  Variado(
    nombre: 'Pollo a las brasas',
    precio: 'S/150.00',
    imagen: 'polloBrasas.png',
  ),
  Variado(
    nombre: 'Arroz con mariscos',
    precio: 'S/125.99',
    imagen: 'mariscos.png',
  ),
  Variado(
    nombre: 'Arroz con Pollo',
    precio: 'S/224.99',
    imagen: 'arrozConPollo.png',
  ),
  Variado(
    nombre: 'Husky siberiano',
    precio: 'S/55.00',
    imagen: 'husky.png',
  ),
  Variado(
    nombre: 'Doberman',
    precio: 'S/30.00',
    imagen: 'doberman.png',
  ),
  Variado(
    nombre: 'Powerbank',
    precio: 'S/100.00',
    imagen: 'powerbank.png',
  ),
  Variado(
    nombre: 'Pug',
    precio: 'S/200.00',
    imagen: 'pug.png',
  ),
  Variado(
    nombre: 'SSD',
    precio: 'S/250.00',
    imagen: 'ssd.png',
  ),
  Variado(
    nombre: 'Munich',
    precio: 'S/90.00',
    imagen: 'munich.png',
  ),
  Variado(
    nombre: 'Venecia',
    precio: 'S/100.00',
    imagen: 'venecia.png',
  ),
  Variado(
    nombre: 'Grecia',
    precio: 'S/150.00',
    imagen: 'grecia.png',
  ),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Variados',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Variados'),
            ),
            body: ListView.builder(
                itemCount: VariadosList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Container(
                        width: 100,
                        child: Image.asset(
                          VariadosList[index].imagen,
                        ),
                      ),
                      title: Text(
                        VariadosList[index].nombre,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      subtitle: Text(
                        VariadosList[index].precio,
                        style: TextStyle(fontSize: 16.0),
                      ));
                })));
  }
}
