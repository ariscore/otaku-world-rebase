import 'package:flutter/material.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/placeholders/anime_character_placeholder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../generated/assets.dart';

class YouTubePlayerScreen extends StatefulWidget {
  final String? youtubeId;

  const YouTubePlayerScreen({
    super.key,
    required this.youtubeId,
  });

  @override
  State<YouTubePlayerScreen> createState() => _YouTubePlayerScreenState();
}

class _YouTubePlayerScreenState extends State<YouTubePlayerScreen> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    if (widget.youtubeId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: widget.youtubeId!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          showLiveFullscreenButton: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(),
      body: _controller != null
          ? Center(
              child: YoutubePlayer(
                controller: _controller!,
                showVideoProgressIndicator: true,
              ),
            )
          : const AnimeCharacterPlaceholder(
              asset: Assets.charactersCigaretteGirl,
              subheading: StringConstants.somethingWentWrong,
            ),
    );
  }
}
