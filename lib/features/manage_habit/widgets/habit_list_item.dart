import 'package:habits_app/core/export/lib_exports.dart';
import 'package:habits_app/features/models/habit_model.dart';

class HabitListItem extends StatelessWidget {
  const HabitListItem({
    super.key,
    required this.habit,
    required this.onDelete,
    required this.onEdit,
  });
  final HabitModel habit;
  final VoidCallback onDelete;
  final VoidCallback onEdit;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: REdgeInsets.symmetric(vertical: AppPadding.p8),
      child: ListTile(
        title: Text(
          habit.name,
          style: getSemiBoldStyle(
            color: AppColors.getTextPrimaryColor(context),
            fontSize: FontSizeManager.s18,
          ),
        ),
        subtitle: Text(
          'Created on: ${habit.creationDate.toIso8601String().substring(0, 10)}',
          style: getRegularStyle(
            color: AppColors.getTextSecondaryColor(context),
            fontSize: FontSizeManager.s14,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: AppColors.primary),
              onPressed: onEdit,
            ),
            IconButton(
              icon: Icon(Icons.delete, color: AppColors.errorColor),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
