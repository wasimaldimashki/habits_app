import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownWidget<T> extends StatefulWidget {
  final T? selectedValue;
  final List<DropdownMenuItem<T>> items;
  final String? hintText;
  final ValueChanged<T?>? onChanged;
  final InputDecoration? decoration;
  final double borderRadius;
  final Color borderColor;
  final Color fillColor;
  final String? nameLabel;
  final double? width;
  final double? height;
  final Widget? icon;
  final bool showLabel;

  const DropdownWidget({
    super.key,
    this.selectedValue,
    required this.items,
    this.hintText,
    this.onChanged,
    this.width,
    this.showLabel = true,
    this.height,
    this.icon,
    this.decoration,
    this.borderRadius = 12.0,
    this.borderColor = Colors.transparent,
    this.fillColor = Colors.white,
    this.nameLabel = '',
  });

  @override
  State<DropdownWidget<T>> createState() => _DropdownWidgetState<T>();
}

class _DropdownWidgetState<T> extends State<DropdownWidget<T>> {
  T? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.showLabel
            ? Text(widget.nameLabel!,
                style: const TextStyle(color: Colors.black))
            : const SizedBox.shrink(),
        Container(
          width: widget.width,
          height: widget.height,
          padding: REdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: DropdownButtonFormField<T>(
            dropdownColor: Colors.white,
            decoration: widget.decoration ??
                InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: widget.fillColor,
                  labelStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      REdgeInsets.symmetric(vertical: 4.h, horizontal: 14.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius.r),
                    borderSide: BorderSide(color: widget.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius.r),
                    borderSide: BorderSide(color: widget.borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius.r),
                    borderSide: BorderSide(color: widget.borderColor),
                  ),
                ),
            value: selectedValue,
            icon: widget.icon,
            items: widget.items,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
          ),
        ),
      ],
    );
  }
}
