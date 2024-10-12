import 'package:favorite_places/screens/places_add.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your places"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => AddPlacesList()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: PlacesList(
        places: [],
      ),
    );
  }
}
