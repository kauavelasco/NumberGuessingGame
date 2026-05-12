import 'package:adivinha_number/screens/game_credits.dart';
import 'package:adivinha_number/screens/game_options.dart';
import 'package:flutter/material.dart';

class StartGame extends StatefulWidget {
  const StartGame({super.key});

  @override
  State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  String selectedLevel = 'Difícil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[950],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                color: Colors.black,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.white24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.numbers, size: 64, color: Colors.amber),
                      const SizedBox(height: 20),
                      const Text(
                        'Adivinhe o Número',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Tente a sua sorte!',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      const SizedBox(height: 30),
                      const Divider(color: Colors.white24),
                      const SizedBox(height: 20),
                      _buildMenuButton(
                        context,
                        icon: Icons.play_arrow,
                        label: 'Iniciar Jogo',
                        color: Colors.amber,
                        onPressed: () {
                          
                        },
                      ),
                      _buildMenuButton(
                        context,
                        icon: Icons.settings,
                        label: 'Opções',
                        color: Colors.grey[800]!,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const GameOptions()),
                          );
                        },
                      ),
                      _buildMenuButton(
                        context,
                        icon: Icons.info_outline,
                        label: 'Créditos',
                        color: Colors.grey[800]!,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const GameCredits()),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Nível: $selectedLevel',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildMenuButton(BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          label.toUpperCase(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
    );
  }
}