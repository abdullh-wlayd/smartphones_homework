import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework 3',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Homework 3'),
        ),
        body: ListView(
          children: const [
            ProductBox(
              name: 'iPhone',
              description: 'iPhone is the stylish phone ever',
              price: 1000,
              image: 'iphone.png',
            ),
            ProductBox(
              name: 'Pixel',
              description: 'Pixel is the most featureful phone ever',
              price: 800,
              image: 'pixel.png',
            ),
            ProductBox(
              name: 'Laptop',
              description: 'Laptop is most productive development tool',
              price: 2000,
              image: 'laptop.png',
            ),
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(
            'assets/appimages/$image',
            width: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(description),
                  Text('Price: $price'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
