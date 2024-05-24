import 'package:flutter/material.dart';
import 'package:flutter_application_1/Categories/StudentView.dart';
import 'package:flutter_application_1/Categories/TeacherView.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9CCBF1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/04/28/10/15/ai-generated-8725235_1280.jpg'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Choose from the following options',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF8EC7B),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StudentView()));
                  },
                  child: _buildSquareBox(
                    Icons.school,
                    'Student',
                    const Color(0xFF045DA5),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TeacherView()));
                  },
                  child: _buildSquareBox(
                    Icons.person,
                    'Teacher',
                    const Color(0xFF045DA5),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: _buildSquareBox(
                    Icons.people,
                    'Guest',
                    const Color(0xFF045DA5),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSquareBox(IconData icon, String label, Color color) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: color,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
