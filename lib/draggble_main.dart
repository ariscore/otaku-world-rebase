import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimeDetailsScreen(),
    );
  }
}

class AnimeDetailsScreen extends StatefulWidget {
  @override
  _AnimeDetailsScreenState createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int selectedTabIndex = 0; // To keep track of which tab is selected

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://via.placeholder.com/400x300', // Replace with your image
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Demon Slayer: Kimetsu no Yaiba",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.red,
                onTap: (index) {
                  setState(() {
                    selectedTabIndex = index;
                  });
                },
                tabs: [
                  Tab(text: "Overview"),
                  Tab(text: "Characters"),
                  Tab(text: "Staff"),
                  Tab(text: "Stats"),
                  Tab(text: "Social"),
                ],
              ),
            ),
            pinned: true,
          ),
          // Content of each tab in a single scrollable area
          SliverToBoxAdapter(
            child: _getSelectedTabContent(),
          ),
        ],
      ),
    );
  }

  // This function returns the appropriate content based on the selected tab.
  Widget _getSelectedTabContent() {
    switch (selectedTabIndex) {
      case 0:
        return OverviewTab();
      case 1:
        return OverviewTab();
      case 2:
        return Center(child: Text("Staff Content"));
      case 3:
        return Center(child: Text("Stats Content"));
      case 4:
        return Center(child: Text("Social Content"));
      default:
        return Container();
    }
  }
}

class OverviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Adaptation of the Swordsmith Village Arc. Tanjiro's journey leads him to the Swordsmith Village, where he reunites with two Hashira, members of the Demon Slayer Corps' highest-ranking swordsmen.",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            "Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.timer, size: 20),
              SizedBox(width: 4),
              Text("Duration: 11 episodes, ~24 mins each"),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, size: 20),
              SizedBox(width: 4),
              Text("Score: 83"),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),  SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.favorite, size: 20),
              SizedBox(width: 4),
              Text("Favorites: 6257"),
            ],
          ),
          SizedBox(height: 20),




          // Add more content as needed
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
