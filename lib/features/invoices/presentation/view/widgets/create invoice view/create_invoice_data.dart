import 'package:flutter/material.dart';

mixin class CreateInvoiceData {
  List<DropdownMenuItem<int>> payTypeItems = [
    const DropdownMenuItem(
      value: 1,
      child: Text("أجل"),
    ),
    const DropdownMenuItem(
      value: 2,
      child: Text("نقدي"),
    ),
  ];

  List<DropdownMenuItem<int>> shiftItems = [
    const DropdownMenuItem(
      value: 1,
      child: Text("صباحيه"),
    ),
    const DropdownMenuItem(
      value: 2,
      child: Text("مسائيه"),
    ),
  ];
}
