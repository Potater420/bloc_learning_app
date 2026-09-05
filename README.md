# Flutter BLoC & Cubit Learning App

A Flutter project demonstrating the BLoC and Cubit state management patterns using `flutter_bloc`.

## Features

### Phase 1 — Introduction to BLoC

- CounterBloc for incrementing and decrementing a counter.
- ThemeBloc for switching between light and dark themes.

### Phase 2 — Bloc Widgets

- BlocBuilder to rebuild the UI when the counter changes.
- BlocListener to display a SnackBar when the counter reaches a specific value.
- BlocConsumer to combine BlocBuilder and BlocListener functionality.

### Phase 3 — Counter Cubit App

- CounterCubit with increment and decrement methods.
- BlocProvider for providing the Cubit to the widget tree.
- `context.read<CounterCubit>()` for calling Cubit methods.
- BlocBuilder for displaying the counter.
- BlocListener for displaying a dialog when the counter becomes negative.
- BlocConsumer for displaying a message when the counter reaches 10 or -10.

## Project Structure

```text
lib/
├── bloc/
│   ├── counter_bloc.dart
│   ├── counter_event.dart
│   ├── counter_state.dart
│   ├── theme_bloc.dart
│   ├── theme_event.dart
│   ├── theme_state.dart
│   └── counter_cubit.dart
│
├── counter_bloc_screen.dart
├── counter_cubit_screen.dart
└── main.dart

screenshots/
├── phase1_light_theme.png
├── phase1_dark_theme.png
├── phase2_snackbar.png
├── phase2_blocbuilder.png
└── phase3_counter_app.png
Technologies
Flutter
Dart
flutter_bloc
Screenshots
Phase 1 — ThemeBloc

Phase 2 — BlocListener

Phase 2 — BlocBuilder

Phase 3 — CounterCubit

Getting Started
Clone the repository.
Run:
flutter pub get
Start the application:
flutter run
Author

Peter


**Important:** change the screenshot filenames in the README if your actual filenames are different.

---

# 2. Check your project before GitHub

Open the terminal in your project folder and run:

```bash
git status