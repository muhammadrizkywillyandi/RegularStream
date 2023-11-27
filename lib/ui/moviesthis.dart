import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoviesthisPage(),
    );
  }
}

class MoviesthisPage extends StatelessWidget {
  // Placeholder for buildImageWithText method
  Widget buildImageWithText(String imagePath, String text) {
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // New buildCategory method
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Text("Movies This Day"),
        leading: IconButton(
          icon: Icon(Icons.undo),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_outline, size: 24),
            onPressed: () {
              // Action when Help icon is clicked
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 24),
            onPressed: () {
              // Action when Settings icon is clicked
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildCategory(
              'Today',
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
              'Tomorrow',
              [
                'assets/images/fastandfurious.png', // Replace with your asset path
                'assets/images/ironman2.png', // Replace with your asset path
                'assets/images/Johnwick2.png', // Replace with your asset path
              ],
              ['Fast and Furious', 'Iron Man 2', 'John Wick 2'],
            ),
            buildCategory(
              '2 Days Later',
              [
                'assets/images/ouija.png', // Replace with your asset path
                'assets/images/conjuring.png', // Replace with your asset path
                'assets/images/insidious.png', // Replace with your asset path
              ],
              ['Ouija', 'The Conjuring ', 'Insidious 3'],
            ),
            buildCategory(
              '3 Days Later',
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
