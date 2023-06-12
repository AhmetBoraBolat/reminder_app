import 'package:flutter/material.dart';
import '../util/dashboard_card.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            // Dashboard 'Your plan for today!' card
            child: dashBoardUICard(),
          ),
          const Expanded(
            // GÜNLÜK PLANLAR GÖZÜKECEK KART ŞEKLİNDE SOL DA İKON ORTADA BÜYÜK BİR BAŞLIK ALTTA SAAT SAĞDA SAĞA DOĞRU OK
            flex: 7,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Daily Review',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }

  Padding dashBoardUICard() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 236, 236, 188),
            ),
            width: 321,
            height: 185,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Plan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'for today',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '1 of 4 completed',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Show More',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              height: 180,
              width: 180,
              right: -20,
              bottom: 50,
              child: Image.asset('assets/images/reminderapp.png'))
        ],
      ),
    );
  }
}
