import 'package:flutter/material.dart';
import 'package:gas_station_app/features/invoices/presentation/view/widgets/invoices_body_view.dart';
import 'package:gas_station_app/shared/widgets/custom_appbar.dart';

class InvoicesView extends StatelessWidget {
  const InvoicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
        bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:CustomAppbar(
          isShowData: true,
          title: "الفواتير",
        ) ,
        body: InvoicesBodyView() ,
      
      ),
    );
  }
}