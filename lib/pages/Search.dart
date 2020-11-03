import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forecaster - Search city'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Search your city:',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _makeSearchCallback(context),
        tooltip: 'Search',
        child: Icon(Icons.search),
      ),
    );
  }

  Function _makeSearchCallback(BuildContext context) {
    return () {
      Navigator.pushNamed(context, '/forecast-today');
    };
  }
}
