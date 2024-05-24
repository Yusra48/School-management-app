import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

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
                    'https://cdn.pixabay.com/photo/2015/12/15/06/42/kids-1093758_1280.jpg'),
                radius: 80,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: _buildSquarebox(
                        Icons.checklist, "Attendance", Color(0xFF045DA5)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: _buildSquarebox(Icons.add_home_work_outlined,
                        "HomeWork", Color(0xFF045DA5)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: _buildSquarebox(
                        Icons.paste, "Result", Color(0xFF045DA5)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: _buildSquarebox(
                        Icons.add_task, "Exams Routine", Color(0xFF045DA5)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: _buildSquarebox(
                        Icons.question_answer, "Solutions", Color(0xFF045DA5)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child:
                        _buildSquarebox(Icons.quiz, "Quiz", Color(0xFF045DA5)),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildSquarebox(IconData icon, String label, Color color) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
              color: Colors.grey.withOpacity(0.5),
            ),
          ]),
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
