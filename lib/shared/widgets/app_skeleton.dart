import 'package:flutter/material.dart';

class SkeletonLoaderWidget extends StatelessWidget {
  const SkeletonLoaderWidget({
    Key? key,
    this.width = double.infinity,
    this.height = 200.0,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Skeleton
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedShimmerContainer(
            width: width * 0.6,
            height: 20,
          ),
        ),
        // Subtitle Skeleton
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AnimatedShimmerContainer(
            width: width * 0.8,
            height: 16,
          ),
        ),
        // Image or Icon Skeleton
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: AnimatedShimmerContainer(
            width: width,
            height: height * 0.4,
          ),
        ),
      ],
    );
  }
}

class AnimatedShimmerContainer extends StatelessWidget {
  const AnimatedShimmerContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Color>(
      tween: Tween<Color>(
        begin: Colors.grey[300]!, // Light grey
        end: Colors.grey[400]!, // Slightly darker grey
      ),
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      builder: (context, color, child) {
        return Container(
          width: width,
          height: height,
          color: color,
        );
      },
    );
  }
}
