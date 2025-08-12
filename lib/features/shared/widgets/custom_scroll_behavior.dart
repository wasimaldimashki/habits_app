import 'package:habits_app/core/export/lib_exports.dart';

class CustomScrollGlow extends ScrollBehavior {
  const CustomScrollGlow();

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return GlowingOverscrollIndicator(
      axisDirection: details.direction,
      color: AppColors.primary.withOpacity(0.2),
      child: child,
    );
  }
}
