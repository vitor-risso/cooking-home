import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildHome();
  }

  Widget _buildHome() {
    return Scaffold(
      body: _buildCard(),
      appBar: _buildAppBar(),
    );
  }

  Widget _buildCard() {
    return SizedBox(
        height: 300,
        child: Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  children: [_buildCardImage(), _buildCardText()],
                )
              ],
            )));
  }

  Widget _buildCardText() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        "Bolo de trigo",
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _buildCardImage() {
    return Image.network(
      'https://i.ytimg.com/vi/o-Yyc7k7gao/maxresdefault.jpg',
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Widget _buildAppBar() {
    return AppBar(title: Text("Cozinhando em casa"));
  }
}
