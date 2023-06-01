import 'package:flutter/material.dart';

import '../util/dashboard_card.dart';
import '../util/dashboard_uicard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> reminderContainer = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Padding(
          // SEARCH BAR
          padding: EdgeInsets.only(top: 40, right: 40, left: 40),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                // Dashboard 'Your plan for today!' card
                child: DashUICard(),
              ),
              Expanded(
                // GÜNLÜK PLANLAR GÖZÜKECEK KART ŞEKLİNDE SOL DA İKON ORTADA BÜYÜK BİR BAŞLIK ALTTA SAAT SAĞDA SAĞA DOĞRU OK
                flex: 7,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Daily Review',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    /////KARTLAR BURDA OLCAK

                    DashCard(
                      taskName: 'Parol',
                      taskTime: '11.00',
                      taskCompleted: false,
                    ),
                    DashCard(
                      taskName: 'Bench Press',
                      taskTime: '14.00',
                      taskCompleted: false,
                    ),
                    DashCard(
                      taskName: 'Pharmaton',
                      taskTime: '7.00',
                      taskCompleted: true,
                    ),
                    DashCard(
                      taskName: 'Sleep',
                      taskTime: '20.00',
                      taskCompleted: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomBar());
  }

  BottomAppBar bottomBar() {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.only(bottom: 10),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MaterialButton(
                    minWidth: 80,
                    onPressed: () {/* işlem yapılacak */},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: Colors.green[700],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MaterialButton(
                    minWidth: 80,
                    onPressed: () {/* işlem yapılacak */},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inventory_2_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MaterialButton(
                    minWidth: 80,
                    onPressed: () {/* işlem yapılacak */},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MaterialButton(
                    minWidth: 80,
                    onPressed: () {/* işlem yapılacak */},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //bottom navigaton bar ekle
    );
  }
}
