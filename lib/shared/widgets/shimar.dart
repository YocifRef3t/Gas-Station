// import "package:flutter/material.dart";

// const shimmerGradient = LinearGradient(
//   colors: [
//     Color(0xFFEBEBF4),
//     Color(0xFFF4F4F4),
//     Color(0xFFEBEBF4),
//   ],
//   stops: [
//     0.1,
//     0.3,
//     0.4,
//   ],
//   begin: Alignment(-1.0, -0.3),
//   end: Alignment(1.0, 0.3),
//   tileMode: TileMode.clamp,
// );

// class ShimmerLoading extends StatefulWidget {
//   const ShimmerLoading({
//     super.key,
//     required this.isLoading,
//     required this.child,
//   });

//   final bool isLoading;
//   final Widget child;

//   @override
//   State<ShimmerLoading> createState() => _ShimmerLoadingState();
// }

// class _ShimmerLoadingState extends State<ShimmerLoading> {
//   @override
//   Widget build(BuildContext context) {
//     if (!widget.isLoading) {
//       return widget.child;
//     }

//     return ShaderMask(
//       blendMode: BlendMode.srcATop,
//       shaderCallback: (bounds) {
//         return shimmerGradient.createShader(bounds);
//       },
//       child: widget.child,
//     );
//   }
// }

// class Shimmer extends StatefulWidget {
//   static ShimmerState? of(BuildContext context) {
//     return context.findAncestorStateOfType<ShimmerState>();
//   }

//   const Shimmer({
//     super.key,
//     this.child,
//   });

//   final Widget? child;

//   @override
//   ShimmerState createState() => ShimmerState();
// }

// class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
//   late AnimationController _shimmerController;

//   @override
//   void initState() {
//     super.initState();

//     _shimmerController = AnimationController.unbounded(vsync: this)
//       ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1000));
//   }

//   @override
//   void dispose() {
//     _shimmerController.dispose();
//     super.dispose();
//   }

//   LinearGradient get gradient => shimmerGradient;

//   // LinearGradient(
//   //       colors: widget.shimmerGradient.colors,
//   //       stops: widget.shimmerGradient.stops,
//   //       begin: widget.shimmerGradient.begin,
//   //       end: widget.shimmerGradient.end,
//   //       transform:
//   //           _SlidingGradientTransform(slidePercent: _shimmerController.value),
//   //     );

//   bool get isSized =>
//       (context.findRenderObject() as RenderBox?)?.hasSize ?? false;

//   Size get size => (context.findRenderObject() as RenderBox).size;

//   Offset getDescendantOffset({
//     required RenderBox descendant,
//     Offset offset = Offset.zero,
//   }) {
//     final shimmerBox = context.findRenderObject() as RenderBox?;
//     return descendant.localToGlobal(offset, ancestor: shimmerBox);
//   }

//   Listenable get shimmerChanges => _shimmerController;

//   @override
//   Widget build(BuildContext context) {
//     return widget.child ?? const SizedBox();
//   }
// }

// class _SlidingGradientTransform extends GradientTransform {
//   const _SlidingGradientTransform({
//     required this.slidePercent,
//   });

//   final double slidePercent;

//   @override
//   Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
//     return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
//   }
// }