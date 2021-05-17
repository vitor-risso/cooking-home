import 'package:flutter/material.dart';

import '../../models/recipe.dart';

class Details extends StatelessWidget {
  final Recipe recipe;

  Details({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDetais();
  }

  Widget _buildDetais() {
    return (Scaffold(
      body: ListView(
        children: [
          _buildDetailsImage(recipe.foto),
          _buildDetaisTitle(recipe.titulo),
          _buildDetailsIconsLine(
              '${recipe.porcoes} porções', recipe.tempoPreparo),
          _buildDetailsSubtitle('Ingredientes'),
          _buildDetailsText(recipe.ingredientes),
          _buildDetailsSubtitle('Modo de preparo'),
          _buildDetailsText(recipe.modoPreparo)
        ],
      ),
      appBar: _buildAppBar(),
    ));
  }

  Widget _buildDetailsImage(image) {
    return Image.asset(image);
  }

  Widget _buildDetaisTitle(titulo) {
    return Center(
        child:
            Text(titulo, style: TextStyle(color: Colors.yellow, fontSize: 30)));
  }

  Widget _buildDetailsIconsLine(rendimento, tempoPreparo) {
    return Row(
      children: [
        _buildDetailsColumnIcon(Icons.restaurant, rendimento),
        _buildDetailsColumnIcon(Icons.timer, tempoPreparo)
      ],
    );
  }

  Widget _buildDetailsColumnIcon(icone, texto) {
    return Expanded(
        child: Column(
      children: [
        Icon(
          icone,
          color: Colors.yellow,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }

  Widget _buildDetailsSubtitle(subtitulo) {
    return Center(
      child: Text(subtitulo, style: TextStyle(fontSize: 20)),
    );
  }

  Widget _buildDetailsText(texto) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(texto),
    );
  }

  Widget _buildAppBar() {
    return AppBar(title: Text("Cozinhando em casa"));
  }
}
