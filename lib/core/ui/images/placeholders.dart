import 'package:flutter/material.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';

class PlaceHolders extends StatelessWidget {
  const PlaceHolders({super.key, required this.placeHolderName, required this.type});

  final String placeHolderName;
  final Enum$MediaType type;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: Image.asset(placeHolderName, fit: BoxFit.cover),
    );
  }
}
