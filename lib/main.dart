import 'package:assc/halamankedua.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown[800],
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Center(
          child: Text('Regular Stream'),
        ),
        leading: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigasi ke halaman kedua ketika ikon diklik.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            }),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Menu Item 1'),
              onTap: () {
                // Tambahkan logika untuk item menu 1 di sini
              },
            ),
            ListTile(
              title: Text('Menu Item 2'),
              onTap: () {
                // Tambahkan logika untuk item menu 2 di sini
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200, // Tinggi gambar
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur orientasi horizontal
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://cdn2.tstatic.net/tribunnewswiki/foto/bank/images/captain-america-civil-war.jpg',
                      width: 300, // Ubah lebar sesuai kebutuhan Anda
                      height: 300, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://4.bp.blogspot.com/-Yr5oYN__9Oo/UR_KUkN2LLI/AAAAAAAAGJo/74mNY6645Jw/s1600/film++terbaru+2013.jpg',
                      width: 300, // Ubah lebar sesuai kebutuhan Anda
                      height: 300, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(10.0), // Ubah padding agar lebih tipis
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20), // Corner radius lebih kecil
              color: Colors.white, // Latar belakang putih
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.search,
                    color: Colors.black), // Ikon "search" di kiri
                SizedBox(width: 10), // Spasi antara ikon dan TextField
                Expanded(
                  child: Container(
                    height: 30, // Ubah tinggi sesuai kebutuhan Anda
                    child: TextField(
                      style: TextStyle(fontSize: 12), // Perkecil ukuran teks
                      decoration: InputDecoration(
                        hintText: 'Cari...',
                        border: InputBorder.none,
                        isDense: true, // Mengurangi padding
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menu "Movies" di sini
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Warna hitam
                  padding: EdgeInsets.symmetric(horizontal: 70), // Lebar tombol
                  onPrimary: Colors.amber[800], // Warna kuning tua saat ditekan
                ),
                child: Text('Movies'),
              ),
              SizedBox(width: 20), // Spasi antara tombol
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menu "Series" di sini
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Warna hitam
                  padding: EdgeInsets.symmetric(horizontal: 70), // Lebar tombol
                  onPrimary: Colors.amber[800], // Warna kuning tua saat ditekan
                ),
                child: Text('Series'),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Ghibli Movies',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi row foto
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur orientasi horizontal
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://wavypack.com/wp-content/uploads/2020/06/studio-ghibli-scaled.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://cdn.mos.cms.futurecdn.net/sfwkJExvw3KUKTEiHUEaYW.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://www.refinery29.com/images/10291378.jpg?crop=40:21',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Action Movies',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi row foto
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur orientasi horizontal
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://ksassets.timeincuk.net/wp/uploads/sites/55/2017/02/2017_JohnWick21_Press_150217-920x584.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://tse2.mm.bing.net/th?id=OIP.02t6aEKB1_0Cfiat-9iEMwHaFj&pid=Api&P=0&h=220',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://i.ytimg.com/vi/s-liyFHRcdE/maxresdefault.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Comedy Movies',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi row foto
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur orientasi horizontal
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://tse4.mm.bing.net/th?id=OIP.F5yORD6A5t7jJRuMrlSy3QHaD0&pid=Api&P=0&h=220',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://tse4.mm.bing.net/th?id=OIP.tpkgcKaP47ngtajcyO3VlQHaEp&pid=Api&P=0&h=220',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://assets1.ignimgs.com/2019/06/08/best-comedies-on-netflix-june2019-blogroll-1559955966606_1280w.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'War Movies',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 150, // Tinggi row foto
            child: ListView(
              scrollDirection: Axis.horizontal, // Mengatur orientasi horizontal
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/original/5mHHvukFGmmRtEmqrlUDl1Y4Gny.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://tse1.mm.bing.net/th?id=OIP.VhEkHGnwV3yyz2fkUhAGYwHaEK&pid=Api&P=0&h=220',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://catimages.org/images/2023/09/18/War-2019-p.jpg',
                      width: 200, // Ubah lebar sesuai kebutuhan Anda
                      height: 150, // Ubah tinggi sesuai kebutuhan Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
