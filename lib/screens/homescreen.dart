import 'package:flutter/material.dart';
import 'package:reminder_app/screens/tasks_screen.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String> reminderContainer = [];
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [DashBoard(), AllTasks()],
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'DashBoard',
              ),
              Tab(
                text: 'Taks',
              ),
            ],
            labelColor: Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

enum myTabViews {
  dashboard,
  tasks,
}
