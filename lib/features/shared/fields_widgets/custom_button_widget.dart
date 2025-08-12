import 'package:habits_app/core/export/lib_exports.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    super.key,
    this.onPressed,
    required this.title,
    this.color,
    this.icon,
    this.borederRadius = 30,
    this.borderColor = Colors.transparent,
    this.fixedSize,
  });
  final void Function()? onPressed;
  final String title;
  final Color? color;
  Color? borderColor;
  double? borederRadius;
  IconData? icon;
  Size? fixedSize;
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: fixedSize ?? Size(mediaQuery.width / 1.4, 0),
        backgroundColor: color,
        shadowColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borederRadius!.r),
            side: BorderSide(color: borderColor!)),
      ),
      label: Text(
        title,
        style: getSemiBoldStyle(
          color: Colors.white,
          fontSize: FontSizeManager.s14,
        ),
      ),
      icon: Icon(icon),
    );
  }
}
