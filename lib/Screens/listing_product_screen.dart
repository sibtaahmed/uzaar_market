import 'package:flutter/material.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product'),
      ),
      body: const Center(
        child: Text('LIst Product'),
      ),
    );
  }
}