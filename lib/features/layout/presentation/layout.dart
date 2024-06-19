import 'package:flutter/material.dart';
import 'package:gas_station_app/features/layout/presentation/widget/bottom_bar_widget.dart';



class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, required this.child});
  final Widget child;

  @override
  State<LayoutScreen> createState() => LayoutScreenState();
}
  
class LayoutScreenState extends State<LayoutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: const BottomBarWidget(),
      
    );
  }
}
