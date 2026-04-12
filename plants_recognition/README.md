# 🌿 Plant AI Explorer

A robust, beautifully designed Flutter application that allows users to browse a collection of plants and dive deeper into their specific details using the power of Google's Gemini AI. Built with scalability in mind, this project strictly adheres to **Clean Architecture** principles and utilizes industry-standard packages for state management, routing, and dependency injection.

---

## ✨ Features

* **Plant Catalog (Screen 1):** A clean, responsive list displaying plant images and their common names.
* **Plant Details (Screen 2):** A detailed view of the selected plant.
* **AI-Powered Insights:** A "More Information" feature that integrates the **Gemini API**. By sending the plant's title and image to the AI, the app retrieves and elegantly displays rich, dynamically generated botanical information.
* **Robust Error Handling:** Comprehensive state management that gracefully handles API exceptions during Gemini API calls.

---
##  📸 Screenshots

Here is a look at the Plant AI Explorer in action:

<div align="center">
  <img src="https://github.com/user-attachments/assets/50d3cab7-6732-4bb8-9ad4-ce5c5181285f" alt="Plant Catalog List View" width="18%">
  <img src="https://github.com/user-attachments/assets/8a9b1b81-ede5-4f6b-a84e-9c22b39e69da" alt="Plant Catalog List View in dark" width="18%">
  <img src="https://github.com/user-attachments/assets/a48fe2e0-2922-4889-bc09-0ec3b9c62ec3" alt="Plant Details View" width="18%">
  <img src="https://github.com/user-attachments/assets/c0ed5939-d4c9-4b3b-bd65-ad6b6ecc36b7" alt="Gemini AI Insights Result" width="18%">
</div>

---
## 🛠️ Tech Stack & Libraries

This app is built using modern Flutter best practices and relies on the following core packages:

* **State Management:** `flutter_bloc` (specifically using **Cubit** for streamlined UI state emissions).
* **Dependency Injection:** `get_it` combined with `injectable` for automated, type-safe code generation.
* **Routing:** `go_router` for declarative routing and deep linking capabilities.
* **Data Models & Unions:** `freezed` and `json_serializable` for robust, immutable data classes and union states (essential for handling complex API states like loading, success, and specific API failures).
* **AI Integration:** Google Gemini API (via HTTP or the official Google Generative AI SDK).

---

## 🏗️ Architecture

The codebase is structured following **Clean Architecture**, dividing responsibilities into three distinct layers to ensure testability, maintainability, and separation of concerns:

1.  **Domain Layer:** The innermost layer. Contains enterprise logic, entities (e.g., `Plant`), and repository interfaces. Completely independent of any Flutter dependencies or external APIs.
2.  **Data Layer:** Implements the repository interfaces. Contains Data Sources (Remote for Gemini API, Local for caching) and Data Transfer Objects (DTOs).
3.  **Presentation Layer:** Handles the UI and State Management. Widgets listen to `Cubit` states. Navigation is handled strictly by `go_router`.

