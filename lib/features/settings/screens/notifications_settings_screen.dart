import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/theme/colors.dart';

class NotificationsSettingsScreen extends StatelessWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Notifications Settings',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                'Activity Subscriptions',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Poppins-Medium',
                    ),
              ),
              const SizedBox(height: 15),
              _buildOption(
                context,
                text: 'Automatically subscribe me to activity I create',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'Automatically subscribe me to activity I reply to',
                onChange: () {},
              ),
              const SizedBox(height: 10),
              Text(
                'Social',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Poppins-Medium',
                    ),
              ),
              const SizedBox(height: 15),
              _buildOption(
                context,
                text: 'When someone follows me',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When I receive message',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When I am @ mentioned in an activity or activity reply',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When someone likes my activity',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When someone likes my reply',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When someone replies my forum comment',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When I am @ mentioned in a forum comment',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When someone likes my forum comment',
                onChange: () {},
              ),
              _buildOption(
                context,
                text:
                    'When someone replies to a forum thread I’m subscribed to',
                onChange: () {},
              ),
              _buildOption(
                context,
                text: 'When someone likes my forum thread',
                onChange: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(
    BuildContext context, {
    required String text,
    required VoidCallback onChange,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(width: 10),
          Switch(
            value: true,
            activeColor: AppColors.sunsetOrange,
            thumbColor: WidgetStatePropertyAll(AppColors.white),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
