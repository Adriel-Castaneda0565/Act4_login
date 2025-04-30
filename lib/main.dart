import 'package:flutter/material.dart';

void main() {
  runApp(const DinoTiendaApp());
}

class DinoTiendaApp extends StatelessWidget {
  const DinoTiendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            padding: const EdgeInsets.only(top: 35),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0B486B),
                  Color(0xFF00B4DB),
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: const [
                    SizedBox(width: 12),
                    Icon(Icons.pets, color: Colors.black, size: 36),
                    Spacer(),
                    Icon(Icons.search, color: Color(0xff000000), size: 36),
                    SizedBox(width: 15),
                    Icon(Icons.shopping_cart_outlined,
                        color: Color(0xff000000), size: 36),
                    SizedBox(width: 12),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'DINO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Text(
                      'TIENDA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0B486B),
              Color(0xFF00B4DB),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        'https://github.com/user-attachments/assets/691eac9c-a7f7-4d89-8cfc-c06fc6793036',
                        fit: BoxFit.cover,
                        width: 2000,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'INICIO DE SESION',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildTextField('Nombre Usuario'),
                        const SizedBox(height: 10),
                        _buildTextField('Email'),
                        const SizedBox(height: 10),
                        _buildTextField('Contraseña', obscure: true),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4176A4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 12),
                            elevation: 5,
                          ),
                          child: const Text(
                            'INGRESAR',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text('¿Eres nuevo por aqui?'),
                        const SizedBox(height: 5),
                        const Text(
                          'Crear una cuenta',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
