import 'package:flutter/material.dart';

class GameCredits extends StatelessWidget {
  const GameCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[950],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            color: Colors.black,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: Colors.white, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Título
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.code, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Créditos',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.white24, height: 30),
                  const SizedBox(height: 10),
                  _buildCreditItem(Icons.laptop_mac, Colors.lightBlueAccent,
                      'Ideia e Código', 'Kauã Velasco'),
                  const SizedBox(height: 15),
                  _buildCreditItem(Icons.design_services_outlined, Colors.green,
                      'Design', 'Kauã Velasco'),
                  const SizedBox(height: 15),
                  _buildCreditItem(
                      Icons.coffee, Colors.brown, 'Café consumido', '+99...'),
                  
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                    label: const Text('Fechar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildCreditItem(
      IconData icon, Color iconColor, String title, String name) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 30),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}