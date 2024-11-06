import 'package:flutter/material.dart';

class AddPlacesList extends StatefulWidget {
  const AddPlacesList({super.key});

  @override
  State<AddPlacesList> createState() {
    return _AddPlacesList();
  }
}

class _AddPlacesList extends State<AddPlacesList> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add Place"),
            )
          ],
        ),
      ),
    );
  }
}
