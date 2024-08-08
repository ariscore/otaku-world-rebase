import 'package:flutter/material.dart';

import '../../../../utils/app_texts.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            title,
            style: AppTextStyles.infoTitleDataStyle,
          ),
        ),
        Expanded(
          child: Text(
            data,
            style: AppTextStyles.infoDataStyle,
          ),
        ),
      ],
    );
  }
}
