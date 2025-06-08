import '../shimmer_details.dart';
import '../widgets/description_staff_shimmer.dart';
import '../widgets/staff_app_bar_shimmer.dart';

class StaffDetailShimmer extends StatelessWidget {
  const StaffDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          StaffAppBarShimmer(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: DescriptionStaffShimmer(),
            ),
          ),
        ],
      ),
    );
  }
}
