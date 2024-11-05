// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TBIBDatePickerStyle {
  final bool isTime;
  final bool isDate;
  final bool isDateAndTime;
  final DateTime? initDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final TimeOfDay? initTime;

  final DateFormat? formatDate;
  final void Function({required DateTime date})? getTime;

  const TBIBDatePickerStyle({
    this.isTime = false,
    this.isDate = false,
    this.isDateAndTime = false,
    this.formatDate,
    this.getTime,
    this.startDate,
    this.endDate,
    this.initDate,
    this.initTime,
  });
}

class TBIBDatePickerFormField extends StatefulWidget {
  const TBIBDatePickerFormField({
    required this.title,
    required this.onSaved,
    super.key,
    this.validator,
    this.titleStyle,
    this.initValue,
    this.textEditingController,
    this.datePickerStyle = const TBIBDatePickerStyle(),
    this.style,
    this.inputDecoration,
    this.useTitleAsHint = false,
    // this.formatDate,
  });

  /// [title] is the title of the form field
  final String title;

  ///[onSaved] is the function that will be called when the form is saved
  final void Function(String?) onSaved;

  /// [validator] is the function that will be called when the form is validated
  final String? Function(String?)? validator;

  /// [titleStyle] is the style of the title
  final TextStyle? titleStyle;

  /// [datePickerStyle] is the style of the date picker
  final TBIBDatePickerStyle datePickerStyle;

  /// [initValue] is the initial value of the form field
  final String? initValue;

  /// [textEditingController] is the controller of the text field
  final TextEditingController? textEditingController;

  /// [style] is the style of the text field
  final TextStyle? style;

  /// [inputDecoration] is the decoration of the text field
  final InputDecoration? inputDecoration;

  /// [useTitleAsHint] is a boolean that indicates whether to use the title as a hint or not
  final bool useTitleAsHint;

  @override
  State<TBIBDatePickerFormField> createState() =>
      _TBIBDatePickerFormFieldState();
}

class _TBIBDatePickerFormFieldState extends State<TBIBDatePickerFormField> {
  late TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.textEditingController != null) {
      _controller = widget.textEditingController!;
    }
    _controller.text = widget.initValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      style: widget.style,
      keyboardType: (widget.datePickerStyle.isTime ||
              widget.datePickerStyle.isDate ||
              widget.datePickerStyle.isDateAndTime)
          ? TextInputType.datetime
          : TextInputType.text,
      onTap: (!widget.datePickerStyle.isTime &&
              !widget.datePickerStyle.isDate &&
              !widget.datePickerStyle.isDateAndTime)
          ? null
          : () async {
              DateTime? dateSelected;
              FocusScope.of(context).unfocus();
              if (widget.datePickerStyle.isDate &&
                  widget.datePickerStyle.isDateAndTime) {
                final datePicker = await showDatePicker(
                  context: context,
                  initialDate:
                      widget.datePickerStyle.initDate ?? DateTime.now(),
                  firstDate: widget.datePickerStyle.startDate ?? DateTime.now(),
                  lastDate: widget.datePickerStyle.endDate ??
                      DateTime.now().add(const Duration(days: 365)),
                );
                if (datePicker != null) {
                  dateSelected ??= DateTime.now();
                  dateSelected = dateSelected.copyWith(
                    day: datePicker.day,
                    month: datePicker.month,
                    year: datePicker.year,
                  );
                }
              }
              if (!context.mounted) {
                return;
              }
              if (widget.datePickerStyle.isTime ||
                  widget.datePickerStyle.isDateAndTime) {
                final timePicker = await showTimePicker(
                  context: context,
                  initialTime:
                      widget.datePickerStyle.initTime ?? TimeOfDay.now(),
                );
                if (timePicker != null) {
                  dateSelected ??= DateTime.now();
                  dateSelected = dateSelected.copyWith(
                    hour: timePicker.hour,
                    minute: timePicker.minute,
                  );
                }
              }
              if (dateSelected != null) {
                _controller.text = widget.datePickerStyle.formatDate != null
                    ? widget.datePickerStyle.formatDate!.format(dateSelected)
                    : DateFormat('dd-MM-yyyy hh:mm a').format(dateSelected);
                widget.datePickerStyle.getTime!(date: dateSelected);
              }
            },
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator: widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
      decoration: widget.inputDecoration ??
          InputDecoration(
            // labelText: widget.useTitleAsHint ? null : widget.title,
            // hintText: widget.title,
            // hintStyle: widget.titleStyle,
            // contentPadding: const EdgeInsets.all(10),

            labelText: widget.useTitleAsHint ? null : widget.title,
            hintText: widget.useTitleAsHint ? widget.title : null,
            hintStyle: widget.titleStyle,
            labelStyle: widget.titleStyle,
          ),
      onSaved: widget.onSaved,
    );
  }
}
