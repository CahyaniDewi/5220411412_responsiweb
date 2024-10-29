import 'package:flutter/material.dart';
import 'package:madecahya_responsi/screens/account_screen.dart';
import 'package:madecahya_responsi/screens/kategori_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    KategoriScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Bali'),
        backgroundColor: Colors.teal,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 3) {
            Navigator.pushReplacementNamed(context, '/login');
          } else {
            _onItemTapped(index);
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Banner
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://ik.imagekit.io/tvlk/blog/2023/09/shutterstock_631736717.jpg?tr=c-at_max'), // Ganti dengan URL gambar banner yang sesuai
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Selamat Datang di Wisata Bali',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(color: Colors.black54, offset: Offset(1, 1), blurRadius: 5),
                  ],
                ),
              ),
            ),
          ),

          // Grid View
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Destinasi Wisata Favorite',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(8.0),
            children: List.generate(4, (index) {
              return Card(
                color: Colors.teal[100 + index * 50], // Warna unik untuk setiap card
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.place, size: 50, color: Colors.teal[900]),
                    SizedBox(height: 10),
                    Text(
                      'Destinasi ${index + 1}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      _getDestinationDescription(index),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            }),
          ),

          // List View
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'List Destinasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: Icon(Icons.place, color: Colors.teal),
                  title: Text('Destinasi List ${index + 1}'),
                  subtitle: Text(_getListDestinationDescription(index)),
                  onTap: () {
                    // Logika untuk membuka detail destinasi
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  String _getDestinationDescription(int index) {
    switch (index) {
      case 0:
        return 'Pantai Kuta: Pantai ikonik dengan ombak yang sempurna.';
      case 1:
        return 'Ubud: Pusat seni dan budaya Bali yang menawan.';
      case 2:
        return 'Tegallalang: Terasering sawah yang sangat fotogenik.';
      case 3:
        return 'Tanah Lot: Pura yang terletak di atas batu karang.';
      default:
        return '';
    }
  }

  String _getListDestinationDescription(int index) {
    switch (index) {
      case 0:
        return 'Pantai Seminyak: Tempat bersantai dengan suasana yang chic.';
      case 1:
        return 'Pura Besakih: Pura terbesar dan terpenting di Bali.';
      case 2:
        return 'Kintamani: Pemandangan gunung dan danau yang menakjubkan.';
      case 3:
        return 'Nusa Penida: Pulau cantik dengan pantai berpasir putih.';
      case 4:
        return 'Jimbaran: Pantai yang terkenal dengan restoran seafood.';
      default:
        return '';
    }
  }
}
