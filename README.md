# Favorite Places App

**Favorite Places** is a mobile application that allows users to mark and store their favorite places. Users can add details such as location, images, and descriptions for each place. The app leverages the device camera, Google Maps API, and local storage to create a seamless experience.

## Table of Contents
- Features
- Installation
- Usage
- Screenshots
- Technologies Used


## Features
- **Add Places**: Users can add their favorite places with details such as name, image, and location.
- **Image Picker**: Integrate the device camera to take pictures and add them to places.
- **Location**: Get the user's current location and use the Google Maps API for geocoding and mapping.
- **Data Storage**: Store data locally using an on-device SQL database.

## Installation
1. **Clone the repository**: Use the `git clone` command with the repository URL to clone the project to your local machine.
    ```bash
    git clone https://github.com/yourusername/favorite-places-app.git
    ```
2. **Navigate to the project directory**: Change your current directory to the project's directory using the `cd` command.
    ```bash
    cd favorite-places-app
    ```
3. **Install dependencies**: Run the `flutter pub get` command to install all the necessary dependencies for the project.
    ```bash
    flutter pub get
    ```
4. **Run the app**: Use the `flutter run` command to launch the application on your preferred device or emulator.
    ```bash
    flutter run
    ```

## Usage
1. **Adding a Place**:
    - Navigate to the "Add Place" screen.
    - Enter the place's name.
    - Take a picture using the device camera by tapping on the camera icon.
    - Get the current location by tapping on the location icon or select a location manually on the map by tapping on the map icon.
    - Save the place by tapping the save button.

2. **Viewing Places**:
    - Navigate to the "Places" screen to view a list of all added places.
    - Tap on a place to view its details, including its location on a map.

## Screenshots
Include screenshots of the app to provide visual context:
- **Home Screen**: Showcase the main screen where users can see the list of their favorite places.
- **Add Place Screen**: Demonstrate the screen where users can add a new place by entering details, taking a picture, and selecting a location.
- **Place Details Screen**: Highlight the screen that displays detailed information about a selected place, including the location on a map.

## Technologies Used
- **Flutter**: The app is built using the Flutter framework.
- **riverpod**: Used for state management.
- **Google Maps API**: Utilized for location services and displaying maps.
- **SQLite**: Used for local data storage to save place information.
- **image_picker**: Used to pick images from the device gallery or camera.

