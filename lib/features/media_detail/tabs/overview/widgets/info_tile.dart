import 'package:flutter/material.dart';

import '../../../../../utils/app_texts.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.title,
    this.data,
    this.dataWidget,
  });

  final String title;
  final String? data;
  final Widget? dataWidget;

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
        if (data != null)
          Expanded(
            child: Text(
              data!,
              style: AppTextStyles.infoDataStyle,
            ),
          ),
        if (dataWidget != null)
          Expanded(
            child: dataWidget!,
          ),
      ],
    );
  }
}
