import 'package:flutter/material.dart';

void main() => runApp(AppClinicaDental());

class AppClinicaDental extends StatelessWidget {
  const AppClinicaDental({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosPacientes(),

    );
  }
}// fin clase AppClinicaDental

class LosPacientes extends StatelessWidget {
  const LosPacientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  title: const Text(
    'Clínica dental Gioser Fisher',
    style: TextStyle(color: Colors.white), // Texto en blanco
  ),
  backgroundColor: Colors.lightBlue, // Fondo azul claro
  leading: const Icon(
    Icons.health_and_safety, // Icono representativo (similar a una muela/salud)
    color: Colors.white,
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.build, color: Colors.white), // Herramienta
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.emergency, color: Colors.white), // Emergencia
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.camera_alt, color: Colors.white), // Cámara
      onPressed: () {},
    ),
  ],
),

body: SingleChildScrollView(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    children: [
      // Tarjeta 1
      _crearTarjeta('https://raw.githubusercontent.com/gioser0579/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/paciente1.webp', 'Paciente 1'),
      
      // Tarjeta 2
      _crearTarjeta('https://raw.githubusercontent.com/gioser0579/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/paciente2.jpg', 'Paciente 2'),
      
      // Tarjeta 3
      _crearTarjeta('https://raw.githubusercontent.com/gioser0579/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/paciente3.webp', 'Paciente 3'),
      
      // Tarjeta 4
      _crearTarjeta('https://raw.githubusercontent.com/gioser0579/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/paciente4.avif', 'Paciente 4'),
    ],
  ),
)

    ); // fin scaffold
  }
}// fin clase LosPacientes

Widget _crearTarjeta(String url, String titulo) {
  return Card(
    color: Colors.blue[800],
    elevation: 8.0,
    margin: const EdgeInsets.only(bottom: 16.0),
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(url),
        backgroundColor: Colors.white,
      ),
      title: Text(
        titulo,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'Clínica Gioser Fisher',
        style: TextStyle(color: Colors.white70),
      ),
      trailing: const Icon(
        Icons.favorite,
        color: Colors.grey,
      ),
    ),
  );
}