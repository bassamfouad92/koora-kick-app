# KooraKick Project Guidelines

## Architecture & Folder Structure
- **Feature-First Architecture**: The project follows a feature-driven folder structure located in `lib/features/`.
- Each feature module generally consists of:
  - `presentation`: Contains UI components (`screens`, `widgets`), `states`, and `view_models`.
  - `data`: Contains `repositories`, data transfer objects (`requests`, `responses`), and data sources.
  - `domain`: Contains business logic, `entities`, and `value_objects`. **Usecases**: If a feature requires extensive data formatting or complex validations, implement a `usecases` layer within the domain to handle this logic.
- **Common & Core Code**: Shared utilities, global widgets, HTTP clients, and core services reside in `lib/common/`.
- **Routing**: Centralized route definitions are in `lib/routes/`.

## State Management & ViewModels (Riverpod)
- **Riverpod with Code Generation**: Use the `@riverpod` annotation from `riverpod_annotation` to generate providers.
- **ViewModel Pattern**: Manage UI state and business logic via Notifiers (ViewModels).
  - Create a class extending the generated notifier (e.g., `class LoginViewModel extends _$LoginViewModel`).
  - The `build()` method must return an immutable state object (e.g., `LoginState`). Use `freezed` or standard immutable classes with `copyWith` for states.
  - **Dependency Injection**: Access repositories, services, and other providers inside the ViewModel using `ref.read(...)` or `ref.watch(...)`. Do not pass them via constructors.
  - **State Mutations**: Update the UI by assigning a new state object to the `state` property (e.g., `state = state.copyWith(...)`).

## Navigation (GoRouter)
- **Type-Safe Routing**: The project utilizes `go_router` alongside `go_router_builder` for strongly-typed route definitions.
- **Route Definitions**: Define routes as classes that extend `GoRouteData` (or custom abstract classes like `AppRouteData`).
- **Annotations**: Use `@TypedGoRoute`, `@TypedShellRoute`, etc., to build the route tree.
- **Redirection Logic**: Handle authentication and onboarding redirects centrally within the `GoRouter` provider implementation, reacting to Riverpod session states.

## Error Handling
- Use domain-specific error wrappers (e.g., `AppError` and `AppException`) to handle API and network failures gracefully.
- ViewModels should catch exceptions and update the state's status property to reflect the error, allowing the UI to react appropriately.

## UI Practices
- **Component Reusability**: Always check the `lib/common/widgets/` directory first before building new UI. Reuse existing components whenever possible.
- **Consistent Styling**: Always use `context.theme` for padding, colors, typography, and other visual properties. Avoid hardcoding these values to maintain a consistent design system across the app.

## Localization & Strings
- **Feature-Specific String Files**: Each feature must have its own separate strings file (e.g., `auth_strings.dart`) to manage its text keys.
- **Key Mapping & Management**: These feature-level string files map keys directly from the central localization files ([en-US.json](file:///Users/bassam/freelance/koora-kick/assets/language/en-US.json) and `ar-AE.json`). Any new keys required by a feature must be added to these central JSON files and then mapped within the corresponding feature's strings file.

## API Documentation
- For all backend API integrations, endpoints, and data contracts, refer to the official documentation: [KooraKick API Docs](https://github.com/koorakickapp-wq/koorakick-backend/blob/main/docs/API.md)

## Code Generation Commands
Remember to run the `build_runner` command whenever modifying generated files (Routes, ViewModels, States, Repositories):
`dart run build_runner build -d`
