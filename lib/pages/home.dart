import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Ahabanza"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return CategoryCard(index: index);
          },
        ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  final int index;
  var categories  = [
    "ibinyobwa",
    "impapuro z'isuku",
    "umunyu",
    "amasukari",
    "ibisembuye",
    "amafu",
    "amasabune",
    "electronic",
    "ibikoresho",
    "amavuta"
  ];

  CategoryCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/cat${index + 1}.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '${categories[index]}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}