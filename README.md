# Stock Price Viewer

A Flutter application that connects to a WebSocket server to receive and display the latest stock prices. The application follows a clean architecture approach, ensuring a modular, maintainable, and testable codebase.

## Websocket URL:- wss://websocket-example-zh0u.onrender.com
## Github url of backend :-https://github.com/cracked2626/websocket-example.git

## Table of Contents

- [Features](#features)
- [Architecture](#architecture)
- [Folder Structure](#folder-structure)

## Features

- Connects to a WebSocket server to receive real-time stock prices.
- Displays the latest stock price inside a button.
- Clean architecture for better maintainability and scalability.

## Architecture

This application follows the principles of clean architecture, separating the codebase into distinct layers with specific responsibilities:

1. **Presentation Layer**: Manages the UI and state of the application.
2. **Domain Layer**: Contains business logic and use cases.
3. **Data Layer**: Handles data fetching and persistence.

## Folder Structure

- **config**: Contains configuration files like routing and theming (not used in this example).
- **data**: Manages data sources and repositories.
  - **datasources/remote**: Contains the `WebSocketService` for connecting to the WebSocket server.
  - **repositories_impl**: Implements the repositories for data fetching.
- **domain**: Contains core business logic and entities.
  - **models**: Defines data models.
  - **repositories**: Declares repository interfaces.
  - **use_cases**: Implements use cases for business logic.
- **presentation**: Manages UI and state.
  - **state_management/providers**: Contains providers for state management.
  - **screens**: Contains UI screens.
  - **widgets**: Contains common reusable widgets.
- **utils**: Contains utility files like constants and colors.


