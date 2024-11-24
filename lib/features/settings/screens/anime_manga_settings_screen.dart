import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/settings_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';

import '../../../core/ui/buttons/primary_button.dart';

class AnimeMangaSettingsScreen extends StatefulWidget {
  const AnimeMangaSettingsScreen({super.key});

  @override
  State<AnimeMangaSettingsScreen> createState() =>
      _AnimeMangaSettingsScreenState();
}

class _AnimeMangaSettingsScreenState extends State<AnimeMangaSettingsScreen> {
  bool isModified = false;

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient()!;

    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Anime & Manga Settings',
      ),
      floatingActionButton: isModified
          ? PrimaryButton(
              onTap: () {},
              label: 'Save',
              height: 50,
              verticalPadding: 10,
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: ScalingFabAnimator(),
      body: BlocConsumer<ViewerBloc, ViewerState>(
        listenWhen: (previous, current) =>
            previous is ViewerLoaded &&
            current is ViewerLoaded &&
            previous.showProcess != current.showProcess,
        listener: (context, state) {
          log('Listening to changes');
        },
        builder: (context, state) {
          if (state is ViewerInitial) {
            context.read<ViewerBloc>().add(LoadViewer(client));
          }

          if (state is ViewerInitial || state is ViewerLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ViewerLoaded) {
            final user = state.user;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    CustomDropdown(
                      title: 'Title Language',
                      dropdownItems: SettingsConstants.titleLanguages,
                      initialValue: SettingsConstants.getTitleLanguageString(
                        user.options?.titleLanguage,
                      ),
                      onChange: (titleLanguage) {
                        // if (!isModified) {
                        //   setState(() {
                        //     isModified = true;
                        //   });
                        // }
                        setState(() {
                          isModified = !isModified;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomDropdown(
                      title: 'Staff & Character Name Language',
                      dropdownItems: SettingsConstants.staffLanguages,
                      initialValue: SettingsConstants.getStaffLanguageString(
                        user.options?.staffNameLanguage,
                      ),
                      onChange: (p0) {},
                    ),
                    const SizedBox(height: 20),
                    CustomDropdown(
                      title: 'Activity Merge Time',
                      description:
                          'Episode and chapter activity created within this '
                          'time period will be merged together (E.g. Watched episodes 10-12)',
                      dropdownItems: SettingsConstants.activityMergeTimes,
                      // initialValue: SettingsConstants.activityMergeTimes[0],
                      initialValue: SettingsConstants.getMergeTimeFromMinutes(
                        user.options?.activityMergeTime,
                      ),
                      onChange: (time) {
                        log('Time: ${SettingsConstants.getMinutesFromMergeTime(time)}');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomCheckBox(
                      label: 'Airing Anime Notification',
                      value: '',
                      onChanged: () {},
                      initialValue: user.options?.airingNotifications ?? false,
                    ),
                    CustomCheckBox(
                      label: '18+ Content',
                      value: '',
                      onChanged: () {},
                      initialValue: user.options?.displayAdultContent ?? false,
                    ),
                  ],
                ),
              ),
            );
          } else if (state is ViewerError) {
            return ErrorText(
              message: state.message,
              onTryAgain: () {
                context.read<ViewerBloc>().add(LoadViewer(client));
              },
            );
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }
}

class ScalingFabAnimator extends FloatingActionButtonAnimator {
  @override
  Offset getOffset({
    required Offset? begin,
    required Offset? end,
    required double progress,
  }) {
    return Offset.lerp(begin, end, progress)!;
  }

  @override
  Animation<double> getScaleAnimation({Animation<double>? parent}) {
    return parent!;
  }


  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return const AlwaysStoppedAnimation(0);
  }
}
