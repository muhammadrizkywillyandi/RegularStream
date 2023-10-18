import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.undo),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_outline,
                size: 24), // Mengubah ikon dan ukurannya
            onPressed: () {
              // Aksi ketika ikon Help diklik
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 24), // Mengubah ikon dan ukurannya
            onPressed: () {
              // Aksi ketika ikon Setting diklik
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff2f0f0f),
                    borderRadius: BorderRadius.circular(70.5),
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    'https://tse2.mm.bing.net/th?id=OIP.Ql1wimJac6i6_c86c0n1ZQHaGZ&pid=Api&P=0&h=220s',
                    width: 130,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'My Watchlist',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: <Widget>[
              Container(
                width: 106,
                height: 137,
              ),
              Positioned(
                left: 134,
                top: 33,
                child: Container(
                  width: 106,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color(0xFFA4A3A3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Continue Watching',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Ubah sesuai kebutuhan Anda
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GridItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      // Ganti dengan konten item grid sesuai kebutuhan
    );
  }
}
