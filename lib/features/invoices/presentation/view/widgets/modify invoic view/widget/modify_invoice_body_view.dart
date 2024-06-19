import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_station_app/core/theme/app_colors.dart';
import 'package:gas_station_app/core/theme/fonts.dart';
import 'package:gas_station_app/features/invoices/presentation/view/widgets/modify%20invoic%20view/widget/modify_invoice_button.dart';
import 'package:gas_station_app/shared/widgets/custom_appbar.dart';
import 'package:gas_station_app/shared/widgets/defult_button.dart';
import 'package:gas_station_app/shared/widgets/text_form_field.dart';

class ModifyInvoiceBodyView extends StatefulWidget {
  const ModifyInvoiceBodyView({super.key, required this.isOnlyShow});
  final bool isOnlyShow;

  @override
  State<ModifyInvoiceBodyView> createState() => _ModifyInvoiceBodyViewState();
}

class _ModifyInvoiceBodyViewState extends State<ModifyInvoiceBodyView> {
  bool? isShowTextFeild;
  @override
  void initState() {
    isShowTextFeild = widget.isOnlyShow;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(
          title: "الفاتورة",
          isShowData: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 80,
              color: AppColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ModifyInvoiceButton(
                    icon: Icons.print,
                    onTap: () {},
                    text: "طباعة",
                  ),
                  ModifyInvoiceButton(
                    icon: Icons.search,
                    onTap: () {
                      setState(() {
                        isShowTextFeild = true;
                      });
                    },
                    text: "عرض",
                  ),
                  ModifyInvoiceButton(
                    icon: Icons.delete,
                    onTap: () {},
                    text: "حذف",
                  ),
                  ModifyInvoiceButton(
                    icon: Icons.edit,
                    onTap: () {
                      setState(() {
                        isShowTextFeild = false;
                      });
                    },
                    text: "تعديل",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "123456789",
                      readOnly: true,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("رقم الفاتوره"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: " اجل / نقدي",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("نوع الفاتورة"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "2/2/4141",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("تاريخ الفاتوره"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "عام",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("نوع المرجع"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "محمد احمد",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("اسم العميل"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "1554",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("المبلغ"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "محمد",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("الكاشير"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "مستودع البنزين و السولار",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("المستودع"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "الفرع الرئيسي",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("الفرع"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "محمد",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("اعد بواسطة"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "123456789",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("القيود"),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultTextFormField(
                      initialValue: "فعال / لا",
                      readOnly: isShowTextFeild,
                      labelStyle:
                          AppFonts.cairo20B.copyWith(color: Colors.black54),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("فعال"),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    if(isShowTextFeild == false)
                    DefaultButton(onPressed: () {}, text: "حفظ"),
                     if(isShowTextFeild == false)
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
