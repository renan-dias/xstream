import 'package:flutter/material.dart';
import 'package:xstream/broadcast_screen.dart';
import 'package:xstream/games_screen.dart';

void main() {
  runApp(xstreamApp());
}

class xstreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xstream',
      theme: ThemeData(
        primaryColor: Colors.blue, // Sua cor primária
        hintColor: Colors.orange, // Sua cor de destaque
        fontFamily: 'Roboto', // Sua fonte
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('xstream'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Bem-vindo ao xstream!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BroadcastScreen()),
              );
            },
            child: Text('Comece a Transmitir'),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GamesScreen()),
              );
            },
            child: Text('Explorar Jogos'),
          ),
        ],
      ),
    );
  }
}
