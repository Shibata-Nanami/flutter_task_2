import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'サンプルページ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.grey,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ListTile(
                title: Text("タイトル"),
              ),
              GestureDetector(
                onTap: () {},
                child: InkWell(
                  onTap: () {
                    context.go('/About');
                  },
                  child: const ListTile(
                    title: Text("メニューA"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text("メニューB"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text("メニューC"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
