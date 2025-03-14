import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jesus Esquivel/1176"),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.italic,
          ),
          backgroundColor: Colors.blue,
        ),
        body: FacturacionList(),
      ),
    );
  }
}

class FacturacionList extends StatelessWidget {
  final Map<String, dynamic> datosFacturacion = {
    'factura1': {
      'id_factura': 'FAC-001',
      'id_reserva': 'RES-101',
      'fecha_de_pago': '2024-03-15',
      'monto_total': 150.00,
      'url_imagen':
          'https://raw.githubusercontent.com/Jesus-Esquivel/Imagen/refs/heads/main/factura.png',
    },
    'factura2': {
      'id_factura': 'FAC-002',
      'id_reserva': 'RES-102',
      'fecha_de_pago': '2024-03-20',
      'monto_total': 200.00,
      'url_imagen':
          'https://raw.githubusercontent.com/Jesus-Esquivel/Imagen/refs/heads/main/fecha%20de%20pago.jpg',
    },
    'factura3': {
      'id_factura': 'FAC-003',
      'id_reserva': 'RES-103',
      'fecha_de_pago': '2024-03-25',
      'monto_total': 100.00,
      'url_imagen':
          'https://raw.githubusercontent.com/Jesus-Esquivel/Imagen/refs/heads/main/reserva.jpg',
    },
    'factura4': {
      'id_factura': 'FAC-004',
      'id_reserva': 'RES-104',
      'fecha_de_pago': '2024-03-30',
      'monto_total': 250.00,
      'url_imagen':
          'https://raw.githubusercontent.com/Jesus-Esquivel/Imagen/refs/heads/main/total.jpg',
    },
    'factura5': {
      'id_factura': 'FAC-005',
      'id_reserva': 'RES-105',
      'fecha_de_pago': '2024-03-10',
      'monto_total': 250.00,
      'url_imagen':
          'https://raw.githubusercontent.com/Jesus-Esquivel/Imagen/refs/heads/main/pago.jpg',
    },
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> facturacionList = [];

    datosFacturacion.forEach((key, factura) {
      facturacionList.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100]!,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    factura['url_imagen']), // Cargar la imagen desde la URL
              ),
              title: Text(
                factura['id_factura'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    factura['id_reserva'],
                    style: TextStyle(color: Colors.purple),
                  ),
                  Text('Fecha de Pago: ${factura['fecha_de_pago']}'),
                  Text('Monto Total: \$${factura['monto_total']}'),
                ],
              ),
            ),
          ),
        ),
      );
    });

    return Column(
      children: facturacionList,
    );
  }
}
