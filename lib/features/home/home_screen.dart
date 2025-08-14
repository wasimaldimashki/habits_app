import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/home/screens/habit_screen.dart';
import 'package:habits_app/features/home/screens/profile_screen.dart';
import 'package:habits_app/features/home/screens/statistics_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemPosition = 0;
  final List<Widget> _pages = [
    const HabitScreen(),
    const StatisticsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItemPosition],
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.rectangle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        padding: REdgeInsets.all(12),
        elevation: 0,
        unselectedItemColor: AppColors.getDividerColor(context),
        selectedItemColor: AppColors.white,
        snakeViewColor: AppColors.primary,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: AppColors.getSurfaceColor(context),
        currentIndex: _selectedItemPosition,
        onTap: (index) {
          setState(() {
            _selectedItemPosition = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Habits',
            tooltip: 'Habits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Statistics',
            tooltip: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            tooltip: 'Profile',
          ),
        ],
      ),
    );
  }
}
