import 'package:flutter/services.dart';
import 'package:habits_app/core/export/lib_exports.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({
    super.key,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.icon,
    this.nameLabel,
    this.hintText,
    this.styleInput,
    this.colorIcon,
    this.prefixIcon,
    this.onChanged,
    this.onFieldSubmitted,
    this.tooltipIcon,
    this.maxLines = 1,
    this.onPressedIcon,
    this.validator,
    this.textInputAction,
    this.readOnly = false,
    this.autofillHints,
    this.focusNode,
    this.helper,
    this.suffixWidget,
    this.borderColor = Colors.transparent,
    this.enableCustomIcon = false,
    this.inputFormatters,
    this.colorPrefixIcon,
    this.counterText,
    this.maxLength,
    this.initialValue,
  });

  bool? obscureText;
  TextInputType? keyboardType;
  TextEditingController? controller;
  IconData? icon;
  IconData? prefixIcon;
  String? nameLabel;
  String? hintText;
  TextStyle? styleInput;
  Color? colorIcon;
  Color? borderColor;
  int? maxLines;
  Function(String)? onChanged;
  String? Function(String?)? validator;
  bool? readOnly;
  String? tooltipIcon;
  void Function()? onPressedIcon;
  bool enableCustomIcon;
  TextInputAction? textInputAction;
  Iterable<String>? autofillHints;
  FocusNode? focusNode;
  Widget? helper;
  Color? colorPrefixIcon;
  Widget? suffixWidget;
  void Function(String)? onFieldSubmitted;
  List<TextInputFormatter>? inputFormatters;
  String? counterText;
  int? maxLength;
  String? initialValue;

  @override
  Widget build(BuildContext context) {
    final bool hasError =
        validator != null && validator!(controller?.text) != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 2.h,
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 5.0.w),
          child: Text(
            nameLabel!,
            style:
                getRegularStyle(color: AppColors.getTextPrimaryColor(context)),
          ),
        ),
        TextFormField(
          initialValue: initialValue,
          inputFormatters: inputFormatters,
          focusNode: focusNode,
          textInputAction: textInputAction,
          readOnly: readOnly!,
          maxLines: maxLines,
          maxLength: maxLength,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText!,
          keyboardType: keyboardType,
          controller: controller,
          enableSuggestions: true,
          autofillHints: autofillHints,
          style: styleInput ?? const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: colorPrefixIcon,
            ),
            counterText: counterText,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            labelStyle: styleInput ?? const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.grey[100],
            suffixIcon: icon != null
                ? enableCustomIcon
                    ? Container(
                        // padding: REdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          tooltip: tooltipIcon,
                          icon: Icon(icon, color: colorIcon),
                          onPressed: onPressedIcon,
                        ),
                      )
                    : IconButton(
                        tooltip: tooltipIcon,
                        icon: Icon(icon, color: colorIcon),
                        onPressed: onPressedIcon,
                      )
                : null,
            icon: suffixWidget,
            helper: helper,
            contentPadding:
                REdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius.r),
              borderSide: BorderSide(color: borderColor!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius.r),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius.r),
              borderSide: BorderSide(color: borderColor!),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
