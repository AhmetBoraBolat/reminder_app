import 'package:flutter/material.dart';

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
        body: Padding(
          // SEARCH BAR
          padding: const EdgeInsets.only(top: 70, right: 45, left: 45),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        iconColor: Colors.grey,
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                // İMAGE GELECEK İMAGE DE GÜNLÜK PLANIN KAÇI TAMAMLANDIĞI GÖZÜKECEK
                flex: 6,
                child: Container(),
              ),
              Expanded(
                // GÜNLÜK PLANLAR GÖZÜKECEK KART ŞEKLİNDE SOL DA İKON ORTADA BÜYÜK BİR BAŞLIK ALTTA SAAT SAĞDA SAĞA DOĞRU OK
                flex: 7,
                child: Container(),
              )
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inventory_2_sharp,
                          color: Colors.green[700],
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_sharp,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green[700],
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
