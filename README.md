Habits App
A habit-tracking application that helps you build positive habits and monitor your daily progress. This app aims to simplify the process of habit tracking with a simple and intuitive user interface.

Key Features
Habit Management: Easily add, edit, and delete your habits.

Daily Tracking: Log your daily achievements with a single click.

Statistics Analysis: View weekly and monthly progress statistics.

User Profile: Modify your profile details such as username and gender.

Dark/Light Mode: Switch between the dark and light themes of the application.

Local Storage: Uses the Hive database to store user and habit data locally.

Technologies Used
Flutter: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.

Dart: The programming language used.

State Management:

flutter_bloc: For effective and organized application state management.

get_it: For dependency injection.

Local Storage:

hive: A fast, lightweight NoSQL database for local data storage.

shared_preferences: For storing simple data like user preferences.

Other:

flutter_screenutil: To adapt the user interface to different screen sizes.

go_router: For managing navigation within the application.

equatable: For easy comparison of states and objects.

Setup and Running the Project
To set up and run the project on your machine, follow these steps:

Clone the repository

git clone [URL_HERE]
cd habits_app


Install dependencies

flutter pub get


Run the code generator
Since the project uses Hive, you'll need to run the code generation tool to generate the necessary files.

flutter pub run build_runner build


Run the application

flutter run


You can also open the project in an IDE like VS Code or Android Studio and run it from there.

Project Structure
lib/
├── core/
│   ├── cache/          # Local storage services (Hive, SharedPreferences)
│   ├── services/       # Service locator and other services
│   └── ...
├── features/
│   ├── home/           # Main habits screen
│   ├── settings/       # Settings and profile screen
│   ├── models/         # Data models (UserModel, HabitModel)
│   ├── shared/         # Shared UI components
│   └── ...
├── main.dart
├── ...

Contribution
We welcome your contributions! If you have any suggestions or find any bugs, feel free to open an "issue" or a "pull request" on the repository.