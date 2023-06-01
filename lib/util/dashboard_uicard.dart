import 'package:flutter/material.dart';

class DashUICard extends StatelessWidget {
  const DashUICard({super.key});

  @override
  Widget build(BuildContext context) {
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
