# Habit App — تطبيق العادات

An elegant and functional Flutter application designed to help users build, track, and maintain positive habits effectively. The app offers a clean user interface, bilingual support, and powerful features to support users on their journey toward self-improvement — with all data stored locally on the device for privacy and offline access.

---

## ✨ Features

- **Onboarding Experience**: A guided introduction for first-time users.
- **Profile Setup**: Set up your display name and gender to personalize the app.
- **Habit Creation & Management**: Add, edit, delete, and reorder habits with custom names, descriptions, colors, and icons.
- **Flexible Recurrence**: Choose daily, weekly, or every-X-days schedules for each habit.
- **Daily Tracking**: Mark habits as complete for any selected day with a simple tap.
- **Interactive Calendar**: Visualize your progress over time with a dynamic calendar.
- **Swipe to Delete & Undo**: Remove habits with a swipe gesture and undo accidental deletions.
- **Habit Reminders**: Schedule optional local notifications to stay on track.
- **Statistics Dashboard**: View total habits, current/best streaks, completion rates, and weekly charts.
- **Profile Management**: Update your profile information at any time.
- **Bilingual Support**: Full Arabic and English interface with RTL support.
- **Light/Dark Mode**: Seamlessly switch between themes for comfortable viewing.
- **Privacy Policy**: In-app privacy policy available in both languages.
- **About Us**: Developer information and social contact links.
- **Reset App Data**: Delete all local data with one action when needed.
- **Local Data Persistence**: Your data is stored securely on your device using Hive — no account or cloud sync required.

---

## 📲 Download the App

You can download the latest version of the APK from the following link:

**[Download APK from Google Drive](https://drive.google.com/file/d/1uOokDPpuEdJvhjIYJNQwSEpcWokhm_7-/view?usp=sharing)**

---

## 📂 Project Structure

The project follows a clean, feature-first architectural pattern to ensure scalability and maintainability.

```text
lib/
├── core/               # Core utilities (services, constants, theme, localization)
│   ├── cache/          # Data persistence (Hive, SharedPreferences)
│   ├── services/       # Notifications, service locator (GetIt)
│   └── constants/      # App constants (icons, images)
├── features/           # Feature-based modules
│   ├── home/           # Habits, statistics, profile tabs
│   ├── add_habit/      # Create and configure habits
│   ├── manage_habit/   # Edit and delete habits
│   ├── privacy_policy/ # Privacy policy screen
│   ├── about_us/       # About the developer
│   ├── signin/         # Initial profile setup
│   ├── start/          # Splash and onboarding
│   ├── update_profile/ # Profile editing
│   └── models/         # Data models (HabitModel, UserModel)
├── l10n/               # Localization ARB files (en, ar)
├── routes/             # go_router configuration
└── main.dart           # App entry point
```

---

## 🛠️ Technologies & Libraries Used

This project leverages a modern stack of Flutter libraries to deliver a robust and high-quality experience:

- **State Management**: `flutter_bloc` / `hydrated_bloc` — predictable and persistent state management.
- **Database**: `hive` / `hive_flutter` — lightweight local NoSQL storage.
- **Routing**: `go_router` — declarative navigation.
- **Dependency Injection**: `get_it` — service location and decoupling.
- **Notifications**: `flutter_local_notifications`, `timezone`, `flutter_timezone` — habit reminders.
- **UI Components**:
  - `table_calendar` — calendar view.
  - `flutter_screenutil` — responsive layouts.
  - `google_fonts` — typography.
  - `percent_indicator` — progress indicators.
  - `fl_chart` — statistics charts.
  - `lottie` — empty-state animations.
  - `flutter_animate` — UI animations.
  - `flutter_snake_navigationbar` — bottom navigation.
- **Utilities**:
  - `equatable` — model comparisons.
  - `intl` / `intl_utils` — internationalization (English & Arabic).
  - `url_launcher` — external social links.
  - `uuid` — unique habit IDs.

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

5. **Generate localization files (after editing ARB files):**

   ```sh
   dart run intl_utils:generate
   ```

6. **Run the app:**

   ```sh
   flutter run
   ```

---

## 👨‍💻 Developed By

**Wasim Aldimashki**

- **GitHub**: https://github.com/wasimaldimashki
- **LinkedIn**: https://www.linkedin.com/in/wasim-aldimashki-a76993106/
- **Facebook**: https://www.facebook.com/wasim.aldimashki
- **WhatsApp**: https://wa.me/+963991413927
- **Instagram**: https://www.instagram.com/wasim_aldimashki/
