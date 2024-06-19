import 'package:flutter/material.dart';
import 'package:gas_station_app/core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:popover/popover.dart';

class InvoiceMenuButton extends StatelessWidget {
  const InvoiceMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(Icons.menu, color: Colors.black),
      onTap: () => showPopover(
        context: context,
        direction: PopoverDirection.right,
        bodyBuilder: (context) => const InvoiceMenuItems(),
      ),
    );
  }
}

class InvoiceMenuItems extends StatelessWidget {
  const InvoiceMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu),
              SizedBox(width: 10),
              Text("الفواتير"),
            ],
          ),
          const Divider(),
          Column(
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kModifyInvoiceViewPath, extra: false);
                  Navigator.pop(context);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("تعديل"),
                    SizedBox(width: 10),
                    Icon(Icons.edit),
                  ],
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("حذف"),
                    SizedBox(width: 10),
                    Icon(Icons.delete),
                  ],
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kModifyInvoiceViewPath, extra: true);
                  Navigator.pop(context);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("عرض"),
                    SizedBox(width: 10),
                    Icon(Icons.search),
                  ],
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("طباعة"),
                    SizedBox(width: 10),
                    Icon(Icons.print),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
