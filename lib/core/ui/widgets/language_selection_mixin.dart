import 'package:flutter/material.dart';

import '../../../graphql/__generated/graphql/details/characters.graphql.dart';
import '../filters/custom_dropdown.dart';

mixin LanguageSelectionMixin<T extends StatefulWidget> on State<T> {
  List<String> availableLanguages = [];
  String? selectedLanguage;
  bool _languagesLoaded = false;

  void loadLanguagesFromVoiceActors(List<dynamic> items) {
    if (_languagesLoaded) return;

    Set<String> languages = {};

    for (var item in items) {
      // This works for both characters and staff
      final voiceActorRoles = _getVoiceActorRoles(item);
      voiceActorRoles?.forEach((role) {
        final language = role?.voiceActor?.languageV2;
        if (language != null) {
          languages.add(language);
        }
      });
    }

    availableLanguages = languages.toList()..sort();
    if (availableLanguages.isNotEmpty && selectedLanguage == null) {
      selectedLanguage = availableLanguages.first;
    }
    _languagesLoaded = true;
  }

  List<dynamic>? _getVoiceActorRoles(dynamic item) {
    // Handle different types of objects
    if (item is Query$Characters$Media$characters$edges) {
      return item.voiceActorRoles;
    }
    // Add other types as needed
    return null;
  }

  void updateSelectedLanguage(String language) {
    if (mounted) {
      setState(() {
        selectedLanguage = language;
      });
    }
  }

  void resetLanguages() {
    availableLanguages.clear();
    selectedLanguage = null;
    _languagesLoaded = false;
  }

  Widget buildLanguageDropdown() {
    if (selectedLanguage == null ||
        availableLanguages.isEmpty ||
        availableLanguages.length <= 1) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomDropdown(
        dropdownItems: availableLanguages,
        initialValue: selectedLanguage!,
        onChange: updateSelectedLanguage,
      ),
    );
  }
}
