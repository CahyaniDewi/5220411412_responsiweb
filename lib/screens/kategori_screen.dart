import 'package:flutter/material.dart';

class KategoriScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      "title": "Badung",
      "icon": Icons.beach_access,
    },
    {
      "title": "Buleleng",
      "icon": Icons.water,
    },
    {
      "title": "Gianyar",
      "icon": Icons.temple_buddhist,
    },
    {
      "title": "Karangasem",
      "icon": Icons.nature_people,
    },
    {
      "title": "Kota Denpasar",
      "icon": Icons.location_city,
    },
    {
      "title": "Jembrana",
      "icon": Icons.agriculture,
    },
    {
      "title": "Tabanan",
      "icon": Icons.forest,
    },
    {
      "title": "Bangli",
      "icon": Icons.local_florist,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Kabupaten di Bali'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  categories[index]['icon'],
                  size: 60,
                  color: Colors.teal,
                ),
                SizedBox(height: 10),
                Text(
                  categories[index]['title'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
