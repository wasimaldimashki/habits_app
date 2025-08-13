# Habit Tracker App

An elegant and functional Flutter application designed to help users build, track, and maintain positive habits effectively. The app offers a clean user interface and powerful features to support users on their journey towards self-improvement.

---

## ✨ Features

- **Habit Creation & Management**: Easily add, edit, and delete habits with custom names and recurrence rules.
- **Daily Tracking**: Mark habits as complete for the selected day with a simple tap.
- **Interactive Calendar**: Visualize your progress and consistency over time with a dynamic calendar that marks days with habits.
- **Profile Customization**: Personalize your profile with your name and picture.
- **Light/Dark Mode**: Seamlessly switch between light and dark themes for comfortable viewing.
- **Local Data Persistence**: Your data is securely stored on your device using Hive, ensuring privacy and offline access.

---

## 📲 Download the App

You can download the latest version of the APK from the following link:

**[Download APK from Google Drive]('[https://drive.google.com/file/d/1Ah4LOpJP3Cu6Z4TyVsc4736HppsodSVt/view?usp=sharing]')**

---

## 📂 Project Structure

The project follows a clean, feature-first architectural pattern to ensure scalability and maintainability.

```text
lib/
├── core/               # Core utilities (services, constants, extensions)
│   ├── cache/          # Data persistence (Hive)
│   ├── services/       # Service locator (GetIt)
│   └── ...
├── features/           # Feature-based modules
│   ├── home/           # Home screen, calendar, habit list, profile
│   ├── manage_habit/   # Add, edit, delete habits
│   ├── models/         # Data models (HabitModel, UserModel)
│   └── ...             # Other features like onboarding, auth, etc.
├── main.dart           # App entry point
└── ...
```

---

## 🛠️ Technologies & Libraries Used

This project leverages a modern stack of Flutter libraries to deliver a robust and high-quality experience:

- **State Management**: `flutter_bloc` - For predictable and scalable state management.
- **Database**: `hive` / `hive_flutter` - A lightweight and fast NoSQL database for local storage.
- **Routing**: `go_router` - For declarative and type-safe navigation.
- **Dependency Injection**: `get_it` - For service location and decoupling dependencies.
- **UI Components**: 
  - `table_calendar`: For the main calendar view.
  - `flutter_screenutil`: For responsive UI design across different screen sizes.
  - `google_fonts`: For beautiful and custom typography.
  - `percent_indicator`: For circular progress indicators.
- **Utilities**:
  - `equatable`: To simplify model comparisons.
  - `intl`: For internationalization and date formatting.
  - `image_picker`: To select profile pictures.

---

## 🚀 How to Run the Project

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK (version 3.x or higher)
- Dart SDK

### Installation & Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/wasimaldimashki/habits_app.git
   ```

2. **Navigate to the project directory:**

   ```sh
   cd habits_app
   ```

3. **Install dependencies:**

   ```sh
   flutter pub get
   ```

4. **Run the build runner (for Hive models):**

   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Run the app:**

   ```sh
   flutter run
   ```

---

## 👨‍💻 Developed By

**[Wasim Aldimashki]**

- **GitHub**: `https://github.com/wasimaldimashki`
- **LinkedIn**: `https://www.linkedin.com/in/wasim-aldimashki-a76993106/`
- **Facebook**: `https://www.facebook.com/wasim.aldimashki`
- **WhatsApp**: `https://wa.me/+963991413927`
- **Instagram**: `https://www.instagram.com/wasim_aldimashki/`