import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'halamankedua.dart';
import 'moviesthis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 78, 52, 46),
      ),
      home: const FirstScreen(
        title: null,
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required title});

  Widget buildImage(String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          imageUrl,
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildSearchBar() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: const Row(
        children: <Widget>[
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 30,
              child: TextField(
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Cari...',
                  border: InputBorder.none,
                  isDense: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Add logic for "Movies" button
            if (kDebugMode) {
              print('Movies button pressed');
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.amber[800],
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 70),
          ),
          child: const Text('Movies'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            // Add logic for "Series" button
            if (kDebugMode) {
              print('Series button pressed');
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.amber[800],
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 70),
          ),
          child: const Text('Series'),
        ),
      ],
    );
  }

  Widget buildImageWithButton(String imagePath, String buttonText) {
    var elevatedButton = ElevatedButton(
      child: Builder(
        builder: (context) => ElevatedButton(
          onPressed: () {
            // Navigate to MoviesthisPage when button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoviesthisPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.amber[800],
            backgroundColor: Colors.black,
          ),
          child: Text(buttonText),
        ),
      ),
      onPressed: () {},
    );
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: 300,
              height: 500,
              fit: BoxFit.cover,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.all(8.0), child: elevatedButton)),
          ],
        ),
      ),
    );
  }

  Widget buildCategory(String title, List<String> images, List<String> texts) {
    assert(images.length == texts.length,
        "Number of images should be equal to the number of texts");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return buildImageWithText(images[index], texts[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget buildImageWithText(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: 300,
              height: 500,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: const Center(
          child: Text('Regular Stream'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
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
              title: const Text('Upgrade To Premium'),
              onTap: () {
                // Define logic for menu item 1
                if (kDebugMode) {
                  print('Help & Service');
                }
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Define logic for menu item 2
                if (kDebugMode) {
                  print('Logout');
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildImageWithButton('assets/images/theprincessmononoke.png',
                      'Movies This Day'),
                  buildImageWithButton(
                      'assets/images/whisperoftheheart.png', 'Series This Day'),
                ],
              ),
            ),
            buildSearchBar(),
            buildButtonRow(),
            buildCategory(
              'Ghibli Movies',
              [
                'assets/images/whisperoftheheart.png', // Replace with your asset path
                'assets/images/theprincessmononoke.png', // Replace with your asset path
                'assets/images/graveof.png', // Replace with your asset path
              ],
              [
                'Whisper Of The Heart',
                'The Princess Mononoke',
                'Grave Of Fireflies'
              ],
            ),
            buildCategory(
              'Action Movies',
              [
                'assets/images/fastandfurious.png', // Replace with your asset path
                'assets/images/ironman2.png', // Replace with your asset path
                'assets/images/Johnwick2.png', // Replace with your asset path
              ],
              ['Fast and Furious', 'Iron Man 2', 'John Wick 2'],
            ),
            buildCategory(
              'Horror Movies',
              [
                'assets/images/ouija.png', // Replace with your asset path
                'assets/images/conjuring.png', // Replace with your asset path
                'assets/images/insidious.png', // Replace with your asset path
              ],
              ['Ouija', 'The Conjuring ', 'Insidious 3'],
            ),
            buildCategory(
              'Thriller Movies',
              [
                'assets/images/inception.png', // Replace with your asset path
                'assets/images/joker.png', // Replace with your asset path
                'assets/images/tutor.png', // Replace with your asset path
              ],
              ['Inception', 'Joker', 'Tutor'],
            ),
          ],
        ),
      ),
    );
  }
}
