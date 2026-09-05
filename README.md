# Bloc Learning App

A Flutter project built to learn and demonstrate state management using the **BLoC pattern** with the `flutter_bloc` package. The project progresses from basic BLoC concepts (BlocListener, BlocBuilder, BlocConsumer) to a fully functional Counter App built with both `Bloc` and `Cubit`.

## Overview

This project covers:

1. **Intro to BLoC** — Building a `CounterBloc` (integer state) and a `ThemeBloc` (light/dark theme toggle) to understand how BLoC handles different types of state.
2. **BLoC Widgets** — Using `BlocListener`, `BlocBuilder`, and `BlocConsumer` to react to and display counter state changes, including triggering a `SnackBar`.
3. **Full Counter App** — Building a complete counter application using `CounterCubit`, with increment/decrement logic, a negative-value dialog, and a `BlocConsumer` message at ±10.

## Technologies Used

- Flutter SDK & Dart
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) package
- BLoC & Cubit
- `BlocBuilder`, `BlocListener`, `BlocConsumer`
- `BlocProvider` & `context.read`
- Git & GitHub

## Project Structure

```
bloc_learning_app/
├── lib/
│   ├── bloc/
│   │   ├── counter_bloc.dart      # CounterBloc: handles increment/decrement events
│   │   ├── counter_event.dart     # Events for CounterBloc (Increment, Decrement)
│   │   ├── counter_state.dart     # State for CounterBloc (integer counter value)
│   │   ├── theme_bloc.dart        # ThemeBloc: toggles between light and dark theme
│   │   ├── theme_event.dart       # Events for ThemeBloc (ToggleTheme)
│   │   └── theme_state.dart       # State for ThemeBloc (light/dark theme)
│   ├── cubit/
│   │   ├── counter_cubit.dart     # CounterCubit: increment/decrement methods
│   │   └── counter_state.dart     # State for CounterCubit
│   ├── counter_bloc_screen.dart   # Screen demonstrating BlocListener/BlocBuilder/BlocConsumer with CounterBloc
│   ├── counter_cubit_screen.dart  # Screen demonstrating the full Counter App with CounterCubit
│   └── main.dart                  # App entry point, BlocProvider setup
├── test/
├── pubspec.yaml
└── README.md
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed and configured
- A connected device or emulator

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Potater420/bloc_learning_app.git
   cd bloc_learning_app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Feature Breakdown

### Phase 1 — Intro to BLoC

- **CounterBloc**: Handles `IncrementCounter` and `DecrementCounter` events and emits an updated integer `CounterState`.
- **ThemeBloc**: Handles a `ToggleTheme` event and emits a `ThemeState` representing light or dark mode.

### Phase 2 — BlocListener, BlocBuilder & BlocConsumer

- **BlocListener**: Listens for counter state changes and displays a `SnackBar` when the counter reaches a specific value (e.g., 10 or -10), without rebuilding the UI.
- **BlocBuilder**: Rebuilds the counter display widget whenever the counter state changes.
- **BlocConsumer**: Combines both behaviors in a single widget — rebuilds the UI to show the counter value and triggers a `SnackBar` for specific values.

### Phase 3 — Full Counter App (Cubit)

- **CounterCubit**: Exposes `increment()` and `decrement()` methods that emit a new integer state.
- **BlocProvider**: Provides `CounterCubit` to the widget tree at the top of `counter_cubit_screen.dart`.
- **context.read<CounterCubit>()**: Used inside button `onPressed` callbacks to call `increment()` / `decrement()` without rebuilding on state change.
- **BlocBuilder**: Displays the current counter value in a `Text` widget, rebuilding whenever the state changes.
- **BlocListener**: Shows an `AlertDialog` whenever the counter value becomes negative.
- **BlocConsumer**: Displays the counter value and shows a `SnackBar` message whenever the counter reaches `10` or `-10`.

## Code Conventions

- Each BLoC, Cubit, and screen lives in its own file.
- Classes, variables, and widgets use clear, self-explanatory names.
- Short comments explain BLoC/Cubit logic (event handling, state emission).
- No unused imports or dead code.
- All files formatted with:
  ```bash
  dart format .
  ```

## Screenshots

| Phase | Description | Screenshot |
|-------|-------------|------------|
| Phase 1 | CounterBloc and ThemeBloc running | ![CounterBloc and ThemeBloc running](screen_shots/CounterBloc%20and%20ThemeBloc%20running.jpg) |
| Phase 2 | SnackBar triggered by BlocListener | ![SnackBar triggered by BlocListener](screen_shots/SnackBar%20triggered%20by%20BlocListener.jpg) |
| Phase 2 | Counter UI updated by BlocBuilder | ![Counter UI updated by BlocBuilder](screen_shots/Counter%20UI%20updated%20by%20BlocBuilder.jpg) |
| Phase 3 | Complete Counter App — dialog & BlocConsumer message | ![Complete Counter App — dialog and BlocConsumer message](screen_shots/Complete%20Counter%20App%20—%20dialog%20&%20BlocConsumer%20message.jpg) |

## Author

- **Name:** Peter Gamal
- **GitHub:** [github.com/Potater420](https://github.com/Potater420)
- **Repository:** [github.com/Potater420/bloc_learning_app](https://github.com/Potater420/bloc_learning_app)

## License

This project is for educational purposes as part of a Flutter BLoC learning exercise.