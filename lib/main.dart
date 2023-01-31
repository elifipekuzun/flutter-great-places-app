import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
import './providers/great_places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: const PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (_) => const AddPlaceScreen(),
        },
      ),
    );
  }
}
