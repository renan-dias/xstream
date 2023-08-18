import 'package:flutter/material.dart';

class BroadcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transmissão'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Iniciar Transmissão',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Inicie a transmissão aqui
              },
              child: Text('Iniciar'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Pare a transmissão aqui
              },
              child: Text('Parar'),
            ),
            // Aqui você pode adicionar mais elementos, como informações sobre o jogo em transmissão
          ],
        ),
      ),
    );
  }
}
