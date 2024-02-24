import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 90,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/facebookStory.jpg'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'owner',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
