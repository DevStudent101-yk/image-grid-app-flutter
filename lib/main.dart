import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Image Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGridPage extends StatelessWidget {
  const ImageGridPage({super.key});

  
  final List<String> imageUrls = const [
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
        title: const Text('Responsive Image Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, // Each item max width is 200
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
