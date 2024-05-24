import 'package:flutter/material.dart';

class TeacherView extends StatelessWidget {
  const TeacherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9CCBF1),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/09/06/16/53/book-3658687_1280.jpg'),
                  radius: 80,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.paste,
                        'Attendance',
                        Color(0xFF045DA5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.add_home_work,
                        'Homework',
                        Color(0xFF045DA5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.checklist,
                        'Result',
                        Color(0xFF045DA5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.backpack,
                        'Exams',
                        Color(0xFF045DA5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.help,
                        'Solutions',
                        Color(0xFF045DA5),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.notifications,
                        'Notice & Events',
                        Color(0xFF045DA5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20, width: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: _buildSquareBox(
                        Icons.group_add,
                        'Add an Account',
                        Color(0xFF045DA5),
                      ),
                    ),
                  ],
                )
              ])),
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
            offset: Offset(0, 3),
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
          SizedBox(height: 10),
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
