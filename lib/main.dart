import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //key recebe um valor aleatorio q vira o id da pagina

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Semana2', //o nome do apk
      theme: ThemeData(
        primarySwatch: Colors.blue, //o tema do apk
      ),
      home: const MyHomePage(
          title: 'Primeiro teste'), //texto que vai aparecer na appbar
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar é a barra horizontal exibida na parte superior da tela
        title: Text(widget.title),
      ),
      body: const ExpansionTile(
        //declarando o tipo da tile
        title: Text('Clique para ver mais:'), //titulo da tile
        leading: Icon(Icons.info), //tipo do icone da tile
        backgroundColor: Colors.black12, //cor da tile
        children: [
          //o que vai ter dentro da tile
          ListTile(
              title: Text(
                  '1º Primeiro')), //no caso vai ter apenas 3 textos dentro da tile
          ListTile(title: Text('2º Segundo')),
          ListTile(title: Text('3º Terceiro')),
        ],
      ),
    );
  }
}
