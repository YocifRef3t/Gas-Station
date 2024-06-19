import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String hint;
  final Function(int?) onChanged;
  final int? value;
  final List<DropdownMenuItem<int>>? items;
  const CustomDropDown({
    super.key,
    required this.hint,
    required this.onChanged,
    required this.value,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: DropdownButton<int>(
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(15),
            isExpanded: true,
            value: value,
            elevation: 16,
            underline: const SizedBox(),
            hint: Text(hint),
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.black,
            focusColor: Theme.of(context).colorScheme.background,
            items: items,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
