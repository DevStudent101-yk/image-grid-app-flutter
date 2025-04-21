import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Image Grid',
      theme: ThemeData(primarySwatch:  Colors.blue),
      home: ImageGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGridPage extends StatelessWidget {
  ImageGridPage({super.key});
  final List<String> imageUrls = [
    'assets/younas.jpg',
    'assets/younas2.jpg',
    'assets/younas3.jpg',
    'assets/younas4.jpg',
    'assets/younas5.jpg',
    'https://picsum.photos/id/1011/300/300',
    'https://picsum.photos/id/1015/300/300',
    'https://picsum.photos/id/1025/300/300',
    'https://picsum.photos/id/1035/300/300',
    'https://picsum.photos/id/1045/300/300',
    'https://picsum.photos/id/1055/300/300',
    'https://picsum.photos/id/1065/300/300',
    'https://picsum.photos/id/1075/300/300',
    'https://picsum.photos/id/1011/300/300',
    'https://picsum.photos/id/1015/300/300',
    'https://picsum.photos/id/1025/300/300',
    'https://picsum.photos/id/1035/300/300',
    'https://picsum.photos/id/1045/300/300',
    'https://picsum.photos/id/1055/300/300',
    'https://picsum.photos/id/1065/300/300',
    'https://picsum.photos/id/1075/300/300',
    'https://picsum.photos/id/1011/300/300',
    'https://picsum.photos/id/1015/300/300',
    'https://picsum.photos/id/1025/300/300',
    'https://picsum.photos/id/1035/300/300',
    'https://picsum.photos/id/1045/300/300',
    'https://picsum.photos/id/1055/300/300',
    'https://picsum.photos/id/1065/300/300',
    'https://picsum.photos/id/1075/300/300',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery', 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          //latterSpacing: 1.5,
          color: Color.fromARGB(255, 38, 36, 36),
          shadows: [
            Shadow(
              color: Colors.black54,
              offset: Offset(6, 6),
              blurRadius: 4,
            ),
          ],
        )
        ),

        centerTitle: true,
        backgroundColor: Colors.transparent,
         elevation: 0,
         flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
         ),
        // flexibleSpace: AnimatedContainer(
        //   duration: const Duration(seconds: 2),
        //   curve: Curves.easeInOut,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/younas.jpg"),
        //     fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
              // For example, show a search bar or navigate to a search page

            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5,
          ),

          itemBuilder: (context, index) {
            final image = imageUrls[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: image.toString().startsWith('http')
                  ? Image.network(image, fit: BoxFit.cover)
                  : Image.asset(image, fit: BoxFit.cover),

              
            );
          },
        ),
      ),
    );
  }
}
