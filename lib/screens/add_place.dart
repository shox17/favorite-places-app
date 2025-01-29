import 'dart:io';

import 'package:favorite_places/widgets/image_input.dart';
import 'package:favorite_places/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/providers/user_places.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController =
      TextEditingController(); // The _titleController is used to manage the text input of the title field
  File?
      _selectedImage; // The _selectedImage variable is used to store the selected image

  void _addPlace() {
    // This method is called when the Add Place button is pressed
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty || _selectedImage == null) {
      return;
    }
    ref.read(userPlacesProvider.notifier).addPLace(enteredTitle,
        _selectedImage!); // The addPlace method is called on the userPlacesProvider
    Navigator.of(context)
        .pop(); // The AddPlaceScreen widget is popped from the navigation stack
  }

  @override
  void dispose() {
    _titleController
        .dispose(); // The _titleController is disposed when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: SingleChildScrollView(
        // The SingleChildScrollView widget is used to make the content of the screen scrollable
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: _titleController,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 10),
            ImageInput(
              onPickImage: (image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(height: 10),
            LocationInput(),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              // The ElevatedButton.icon widget is used to create a button with an icon and a label
              onPressed: _addPlace,
              icon: const Icon(Icons.add),
              label: const Text('Add Place'),
            ),
          ],
        ),
      ),
    );
  }
}
