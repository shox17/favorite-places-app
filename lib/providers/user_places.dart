import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  // StateNotifier is a class that helps to manage the state of a provider
  UserPlacesNotifier()
      : super(
            []); // The constructor of the UserPlacesNotifier class initializes the state with an empty list of places

  void addPLace(String title, File image) {
    // This method adds a new place to the list of places
    final newPlace =
        Place(title: title, image: image); // A new place is created
    state = [
      newPlace,
      ...state
    ]; // The state is updated by adding the new place to the beginning of the list
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  // The userPlacesProvider is a StateNotifierProvider that provides an instance of the UserPlacesNotifier class
  (ref) => UserPlacesNotifier(),
);
