import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? valueKey;
  final String? initialValue;
  final String? labelText;
  final String? hintText;
  final bool? isEnabled;
  final FocusNode? focusNode;
  final TextEditingController? value;
  final TextInputType? inputType;
  final String? validateValue;
  final VoidCallback? nextGo;
  final TextInputAction? actionNext;
  final int? maxLine;
  final Function? onDataSaved;
  final Function? onDataChanged;

  const InputField({
    Key? key,
    this.initialValue,
    this.valueKey,
    this.labelText,
    this.hintText,
    this.inputType,
    this.isEnabled,
    this.value,
    this.focusNode,
    this.validateValue,
    this.actionNext,
    this.nextGo,
    this.onDataSaved,
    this.onDataChanged,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: value,
      key: ValueKey(valueKey),
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      enableSuggestions: false,
      keyboardType: inputType,
      maxLines: maxLine,
      enabled: isEnabled,
      textInputAction: actionNext,
      onEditingComplete: nextGo,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 16, 10, 12),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validateValue;
        } else {
          return null;
        }
      },
      onChanged: (value) => onDataChanged,
      onSaved: (value) => onDataSaved,
    );
  }
}
