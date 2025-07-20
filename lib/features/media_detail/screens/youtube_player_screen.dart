import 'package:flutter/material.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/placeholders/anime_character_placeholder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class YouTubePlayer extends StatefulWidget {
  final String? youtubeId;

  const YouTubePlayer({
    super.key,
    required this.youtubeId,
  });

  @override
  State<YouTubePlayer> createState() => _YouTubePlayerState();

  static void showFullScreenYoutubePlayer({
    required BuildContext context,
    required String youtubeId,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: const SimpleAppBar(),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: YouTubePlayer(
                youtubeId: youtubeId,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _YouTubePlayerState extends State<YouTubePlayer> {
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
    return _controller != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: _controller!,
                bottomActions: const [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                      playedColor: AppColors.sunsetOrange,
                      handleColor: AppColors.chineseWhite,
                    ),
                  ),
                  RemainingDuration(),
                ],
                topActions: const [
                  Spacer(),
                  CloseButton(
                    color: AppColors.chineseWhite,
                  ),
                ],

              ),
            ),
          )
        : const AnimeCharacterPlaceholder(
            asset: Assets.charactersCigaretteGirl,
            subheading: StringConstants.somethingWentWrong,
          );
  }
}

class YoutubePlayerDialog {
  static void showYoutubePlayerDialog({
    required BuildContext context,
    required String youtubeId,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          alignment: Alignment.center,
          insetPadding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: AppColors.secondaryGradient,
            ),
            padding: const EdgeInsets.all(10),
            child: YouTubePlayer(youtubeId: youtubeId),
          ),
        );
      },
    );
  }
}

// Alternative lightweight dialog implementation
class OptimizedYoutubeDialog extends StatelessWidget {
  final String youtubeId;

  const OptimizedYoutubeDialog({
    super.key,
    required this.youtubeId,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black54,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: AppColors.secondaryGradient,
            ),
            padding: const EdgeInsets.all(10),
            child: YouTubePlayer(youtubeId: youtubeId),
          ),
        ),
      ),
    );
  }

  static void show({
    required BuildContext context,
    required String youtubeId,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => OptimizedYoutubeDialog(youtubeId: youtubeId),
    );
  }
}
