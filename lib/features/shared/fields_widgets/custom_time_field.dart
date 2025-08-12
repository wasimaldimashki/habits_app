import 'package:habits_app/core/export/lib_exports.dart';
import 'package:intl/intl.dart';

class CustomTimePickerField extends StatefulWidget {
  final String label;
  final TimeOfDay? initialTime;
  final Function(TimeOfDay) onTimeSelected;
  final Color fillColor;
  final Color borderColor;
  final double borderRadius;

  const CustomTimePickerField({
    super.key,
    required this.label,
    this.initialTime,
    required this.onTimeSelected,
    this.fillColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderRadius = 12.0,
  });

  @override
  _CustomTimePickerFieldState createState() => _CustomTimePickerFieldState();
}

class _CustomTimePickerFieldState extends State<CustomTimePickerField> {
  late TextEditingController _controller;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialTime;
    _controller = TextEditingController(
      text: _selectedTime != null ? _formatTime(_selectedTime!) : '',
    );
  }

  String _formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final formattedTime = DateFormat.jm().format(DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    ));
    return formattedTime;
  }

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _controller.text = _formatTime(picked);
      });
      widget.onTimeSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: const TextStyle(color: Colors.black)),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: TextFormField(
            controller: _controller,
            readOnly: true,
            onTap: () => _selectTime(context),
            decoration: InputDecoration(
              hintText: S.of(context).select_a_time,
              filled: true,
              fillColor: widget.fillColor,
              suffixIcon: const Icon(Icons.access_time, color: Colors.grey),
              contentPadding:
                  REdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
