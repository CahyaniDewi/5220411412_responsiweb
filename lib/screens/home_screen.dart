import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> gridItems = [
    {
      'image':
          'https://images.unsplash.com/photo-1553830591-42aaee5e72d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHwxfHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Pantai Kuta'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1534531688091-942be94216d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHwyfHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Ubud'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1567636785271-1760d9c824b9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHwzfHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Tanah Lot'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1564564295391-7f24f26f568b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHw0fHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Gunung Agung'
    }
  ];

  final List<Map<String, String>> listItems = [
    {
      'image':
          'https://images.unsplash.com/photo-1534135954997-e58fbd6dbb46?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHw1fHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Pura Besakih',
      'description': 'Pura terbesar dan paling penting di Bali.'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1544396821-4dd40b938ad3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHw2fHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Pura Ulun Danu Bratan',
      'description': 'Pura air yang indah di tepi Danau Bratan.'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1534951009808-766178b47a4b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHw3fHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Pantai Sanur',
      'description':
          'Pantai tenang dengan pasir putih dan pemandangan matahari terbit.'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1526778548025-fa2f459cd5c6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxNzg3NzV8MHwxfGFsbHw4fHx8fHx8fHwxNjE5NzI3Njg4&ixlib=rb-1.2.1&q=80&w=400',
      'title': 'Pantai Nusa Dua',
      'description':
          'Pantai yang terkenal dengan resor mewah dan aktivitas air.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Tempat Wisata di Bali'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Destinasi Populer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Grid View',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gridItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(gridItems[index]['image']!,
                            fit: BoxFit.cover,
                            height: 120,
                            width: double.infinity),
                        SizedBox(height: 10),
                        Text(gridItems[index]['title']!,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Rekomendasi Lainnya',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(listItems[index]['image']!,
                      fit: BoxFit.cover, width: 50, height: 50),
                  title: Text(listItems[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(listItems[index]['description']!),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Handle tap event here
                  },
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/account');
          }
        },
      ),
    );
  }
}
