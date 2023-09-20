import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmanaFloral'),
      ),
      body: Container(
        color: Colors.grey[200], // Cambiar el color de fondo aquí
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _showLogin ? MyLoginForm() : MyRegistrationForm(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showLogin = !_showLogin;
          });
        },
        child: Icon(_showLogin ? Icons.person_add : Icons.login),
      ),
    );
  }
}

class MyLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Inicio de Sesión',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Usuario',
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Implementar la lógica de inicio de sesión aquí
          },
          child: Text('Iniciar sesión'),
        ),
      ],
    );
  }
}

class MyRegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Registro',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Nombre',
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Correo Electrónico',
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Implementar la lógica de registro aquí
          },
          child: Text('Registrarse'),
        ),
      ],
    );
  }
}
