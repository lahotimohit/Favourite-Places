import 'package:favorite_places/provider/user_places.dart';
import 'package:favorite_places/screens/places_add.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
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
        places: userPlaces,
      ),
    );
  }
}
