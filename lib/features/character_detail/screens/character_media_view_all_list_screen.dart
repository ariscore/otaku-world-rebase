import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';

import '../widgets/character_media_list.dart';

class CharacterMediaViewAllListScreen extends StatelessWidget {
  const CharacterMediaViewAllListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(),
      body: CharacterMediaList(),
    );
  }
}
