# CLAUDE.md — Sample New Mobile App

## Project Overview

Flutter mobile app for simple application. Built with Clean Architecture and BLoC state management, organized as a Melos monorepo.

## Monorepo Structure

```
/
├── app/          # Flutter app — UI, navigation, BLoC, DI wiring
├── domain/       # Business logic — entities, use cases, repository interfaces
├── data/         # Data layer — API models, mappers, repository implementations
├── shared/       # Shared utilities, mixins, base classes
├── resources/    # Assets, localization (l10n), generated files
├── initializer/  # App initialization logic
└── tools/        # Dev tools (gen_env, etc.)
```

## Tech Stack

- **Flutter SDK**: 3.27.0 | **Dart**: 3.6.0
- **State management**: `flutter_bloc`
- **Navigation**: `auto_route` (code-generated routes)
- **DI**: `get_it` + `injectable` (code-generated)
- **Networking**: `dio`
- **Local DB**: `objectbox`
- **Data classes**: `freezed` (immutable models, union types)
- **Testing**: `mocktail`, `bloc_test`
- **Monorepo**: `melos 3.1.0`
- **Git hooks**: `lefthook`
- **Lint**: `dart_code_metrics`, `flutter_lints`
- **CI/CD**: GitHub Actions, Bitbucket Pipelines

## Architecture: Clean Architecture

### Layer Responsibilities

**`domain/`** — Pure Dart, no Flutter/infrastructure dependencies
- `entity/` — Freezed domain models
- `usecase/` — One class per use case, injectable
- `repository/` — Abstract interfaces only

**`data/`** — Implements domain interfaces
- `repository/model/` — API response models (Freezed + JSON)
- `repository/mapper/` — Maps API models → domain entities
- `repository/implementation/` — Concrete repository classes
- `repository/source/` — Remote/local data sources

**`app/`** — Flutter UI layer
- `ui/<feature>/` — Each feature has its own folder
- `base/bloc/` — `BaseBloc`, `BaseBlocEvent`, `BaseBlocState`
- `navigation/` — Auto-route setup
- `di/` — Injectable DI config

## BLoC Pattern

All BLoCs extend `BaseBloc<Event, State>`.

Key `BaseBloc` capabilities:
- `runBlocCatching({action, handleLoading, handleError, handleRetry})` — standard async wrapper with loading/error/retry
- `showLoading()` / `hideLoading()` — delegates to `CommonBloc`
- `addException(AppExceptionWrapper)` — routes errors to `CommonBloc`

Each feature bloc:
- Has a sealed `Event` class (Freezed union) extending `BaseBlocEvent`
- Has a `State` class (Freezed) extending `BaseBlocState`
- Uses `runBlocCatching` for all async operations

## Code Generation

Generated files (excluded from lint, never edit manually):
- `*.g.dart` — JSON serialization, injectable registration
- `*.freezed.dart` — Freezed data classes
- `*.gr.dart` — Auto-route routes
- `*.config.dart` — Injectable config
- `*.mocks.dart` — Mocktail mocks

Run code generation:
```bash
melos run force_build_all          # Rebuild everything
melos run force_build_app          # App module only
melos run force_build_domain       # Domain module only
melos run force_build_data         # Data module only
melos run force_build_app_ui_<feature>  # Specific feature
```

## Lint & Formatting Rules (analysis_options.yaml)

- Line length: **100 characters**
- Single quotes preferred (`prefer_single_quotes`)
- `const` constructors required where possible
- `prefer_const_constructors`, `prefer_final_fields`, `prefer_final_locals`
- No magic numbers (except -1, 0, 1, 2, 3)
- Member order: constructors → fields → getters/setters → methods
- `always_declare_return_types`
- `curly_braces_in_flow_control_structures`
- `eol_at_end_of_file`
- `prefer_trailing_comma`
- `newline_before_return`
- `avoid_unnecessary_containers`, `sized_box_for_whitespace`
- `avoid_wrapping_in_padding`
- `prefer_single_widget_per_file` (private widgets allowed in same file)

## PR Review Guidelines

When reviewing PRs, focus on:

### Architecture Compliance
- UI layer must NOT directly access `data/` or raw API models
- Use cases must be called from BLoC only, not from UI
- Repository implementations belong in `data/`, interfaces in `domain/`
- New entities must use Freezed (`@freezed` annotation)

### BLoC Best Practices
- All async operations should use `runBlocCatching` (not raw try/catch)
- States must be immutable (Freezed `copyWith`)
- Never call `emit()` after `isClosed` — use `BaseBloc.add()` override
- Dispose streams/subscriptions in `close()` override using `disposeBag`
- Avoid business logic in UI widgets — it belongs in BLoC

### Flutter/Dart Quality
- Use `const` constructors wherever possible (prevents unnecessary rebuilds)
- Prefer `BlocBuilder`/`BlocListener`/`BlocConsumer` over manual `StreamBuilder`
- Use `context.read<Bloc>()` for events, `context.watch<Bloc>()` or `BlocBuilder` for state
- Avoid `setState` in pages that use BLoC
- Check for proper `dispose()` on controllers, focus nodes, animation controllers

### Null Safety
- Avoid `!` (bang operator) — use null-aware operators or guard clauses
- Avoid unnecessary `?.` chains that hide logic errors

### Performance
- Avoid rebuilding large widget trees — split into smaller widgets
- Do not perform heavy computation in `build()` methods
- Use `AutomaticKeepAliveClientMixin` only when genuinely needed

### Testing
- BLoC tests use `bloc_test` with `blocTest<>()` pattern
- Mocks use `mocktail` (`MockClass extends Mock implements RealClass`)
- Test files live in `<module>/test/` mirroring `lib/` structure

## Common Commands

```bash
make gen_env          # Generate env config (run first on fresh clone)
make sync             # melos bootstrap + pub get
make test             # Run all tests
make lint             # flutter analyze + dart_code_metrics
make format           # dart format (100 char line length)
make clean_all        # flutter clean all modules
```

## Commit Message Convention

Enforced by `lefthook` via `commit-msg.sh`. Follow the existing style seen in recent commits (imperative mood, concise summary).

## Feature Module Pattern

Each UI feature under `app/lib/ui/<feature>/` typically contains:
```
<feature>/
├── <feature>_page.dart       # Route entry point, provides BLoC
├── <feature>_view.dart       # Stateless UI
├── bloc/
│   ├── <feature>_bloc.dart
│   ├── <feature>_event.dart
│   └── <feature>_state.dart
└── widget/                   # Feature-specific widgets
```

## GitHub Actions Workflows

- `claude.yml` — Triggered by `@claude` in issue comments/issues
- `claude-code-review.yml` — Triggered by `@claude review` in PR comments
- `claude-inline-code-review.yml` — Triggered by `@claude inline review`; posts inline PR comments on specific lines
