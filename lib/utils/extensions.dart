import 'package:intl/intl.dart';
import 'package:otaku_world/constants/string_constants.dart';

import '../graphql/__generated/graphql/fragments.graphql.dart';

extension StringExtension on String {
  String capitalize() {
    return replaceAll('_', " ")
        .replaceAll('\$', '')
        .split(' ')
        .map(
          (element) => toBeginningOfSentenceCase(element.toLowerCase())!,
        )
        .join(' ');
  }
  String checkIfNull() {
    return this == 'null' ? StringConstants.nullStringConstant : this;
  }

  String? checkIfEmpty() {
    final currentString = trim();
    return currentString.isEmpty ? null : currentString;
  }
}

extension FuzzyToDate on Fragment$FuzzyDate {
  DateTime? toDate() {
    if (year == null) return null;

    return DateTime(year!, month ?? 1, day ?? 1);
  }

  String toDateString() {
    if (day == null && month == null && year == null) {
      return StringConstants.nullStringConstant;
    }
    if (day == null || month == null || year == null) {
      return StringConstants.nullStringConstant;
    }

    DateTime dateTime = DateTime(year!, month!, day!);
    String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);

    return formattedDate;
  }
}
