import 'package:flutter/material.dart';
import 'package:gas_station_app/core/router/app_router.dart';
import 'package:gas_station_app/features/invoices/presentation/view/widgets/on_off_invoice/widgets/invoice_menu_item.dart';
import 'package:go_router/go_router.dart';

class InvoiceItem extends StatefulWidget {
  const InvoiceItem({super.key, this.name});
  final String? name;
  @override
  State<InvoiceItem> createState() => _InvoiceItemState();
}

class _InvoiceItemState extends State<InvoiceItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kModifyInvoiceViewPath, extra: true);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.name ?? "رقم الفاتورة : 0000000",
                style: const TextStyle(overflow: TextOverflow.ellipsis),
              ),
              const Text(
                "الاسم : محمد محمد احمد",
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("التار يخ"),
              Text("2/2/2017"),
            ],
          ),
          const InvoiceMenuButton()
        ],
      ),
    );
  }
}
