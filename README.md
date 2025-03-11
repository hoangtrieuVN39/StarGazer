# StarGazer

A Flutter project for stargazing enthusiasts.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Firebase Configuration

This project uses Firebase for backend services. To set up Firebase:

1. The `lib/firebase_options.dart` file contains sensitive API keys and is **excluded from git** via `.gitignore`.
2. A template file `lib/firebase_options_template.dart` is provided instead.
3. To set up your local environment:
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Run `flutterfire configure` to generate your own `firebase_options.dart`
   - Or manually copy `firebase_options_template.dart` to `firebase_options.dart` and fill in your Firebase credentials

### Important Security Note
Never commit the actual `firebase_options.dart` file with real API keys to public repositories.
