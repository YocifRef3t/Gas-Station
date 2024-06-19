import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class FloatingMenuButton extends StatelessWidget {
  const FloatingMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(Icons.info, color: Colors.white),
      onTap: () => showPopover(
        context: context,
        direction: PopoverDirection.right,
        bodyBuilder: (context) => const FloatingMenuItems(),
      ),
    );
  }
}

class FloatingMenuItems extends StatelessWidget {
  const FloatingMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 200,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info),
              SizedBox(width: 10),
              Text("معلومات"),
            ],
          ),
          SizedBox(height: 12),
          Text(
            "قراية العداد : 1222 ",
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 4),
          Text(
            "النوع : بنزين / سولار",
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 4),
          Text(
            "الطلمبة : طلمبه ........",
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 4),
          Text(
            "الفرع: الرئيسي",
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
