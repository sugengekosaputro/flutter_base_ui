import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_tokoto/shared/constants.dart';

import '../../ui/views/home/data_dummy.dart';

class BaseCardWidget extends StatelessWidget {
  final Feature feature;
  final Function onTap;

  const BaseCardWidget({super.key, required this.feature, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: const BorderRadius.all(Radius.circular(kSizeFixedSM)),
      child: Container(
        padding: const EdgeInsets.all(kSizeFixedMD),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(kSizeFixedSM)),
          gradient: LinearGradient(
            colors: [
              feature.color.withOpacity(0.55),
              feature.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            feature.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
