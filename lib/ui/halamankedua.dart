import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ProfilePage extends StatelessWidget {
  final List<String> gridAssetPaths = [
    'assets/images/inception.png',
    'assets/images/joker.png',
    'assets/images/ironman2.png',
    'assets/images/ouija.png',
    'assets/images/fastandfurious.png',
    'assets/images/insidious.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.undo),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help_outline, size: 24),
            onPressed: () {
              // Action when Help icon is clicked
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings, size: 24),
            onPressed: () {
              // Action when Settings icon is clicked
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xff2f0f0f),
                    borderRadius: BorderRadius.circular(70.5),
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/ironman2.png',
                    width: 130,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
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
          const SizedBox(height: 20),
          const Text(
            'My Watchlist',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: <Widget>[
              const SizedBox(
                width: 106,
                height: 137,
              ),
              Positioned(
                left: 134,
                top: 10,
                child: Container(
                  width: 20,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA4A3A3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
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
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AllMoviesPage(gridAssetPaths: gridAssetPaths)),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Change the button color to brown
            ),
            child: const Text('View All Movies'),
          ),
        ],
      ),
    );
  }
}

class AllMoviesPage extends StatelessWidget {
  final List<String> gridAssetPaths;

  const AllMoviesPage({Key? key, required this.gridAssetPaths})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('All Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: gridAssetPaths.length,
          itemBuilder: (context, index) {
            return GridItem(assetPath: gridAssetPaths[index]);
          },
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String assetPath;

  const GridItem({Key? key, required this.assetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ElevatedButton(
            onPressed: () {
              // Add your logic when the button is pressed
              if (kDebugMode) {
                print('Button pressed for $assetPath');
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Change the button color to brown
            ),
            child: const Text('Continue Watching'),
          ),
        ),
      ],
    );
  }
}
