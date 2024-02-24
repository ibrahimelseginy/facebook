import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          const Row(children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text('owner',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                Row(
                  children: [
                    Text('3h'),
                    Icon(Icons.public),
                  ],
                ),
              ],
            ),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('my post',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('100'),
              ),
              Image.asset(
                'assets/images/like.jpg',
                height: 40,
                width: 50,
              ),
              const Spacer(),
              const Text('100 comments'),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/singleLike.jpg',
                  width: 25,
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Text(
                    'Like',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/share.png',
                  width: 25,
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/comment.jpg',
                  width: 25,
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
