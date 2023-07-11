import 'package:flutter/material.dart';

///
/// [menuName]はDialogのタイトルに使う
///
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, required this.menuName});

  final String menuName;

  @override
  Widget build(BuildContext context) {
    print(menuName);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blue.shade200],
            ),
          ),
        ),
        title: Text(menuName),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(280, 50),
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            showDialog<void>(
                context: context,
                builder: (_) {
                  return AlertDialogSample(
                    menuName,
                    menuName,
                    title: 'lllll',
                  );
                });
          },
          child: Text(menuName),
        ),
      ),
    );
  }
}

class AlertDialogSample extends StatelessWidget {
  const AlertDialogSample(
    this.menuName,
    this.menuName2, {
    Key? key,
    required this.title,
  }) : super(key: key);

  final String menuName;
  final String menuName2;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      actionsPadding: const EdgeInsets.all(50),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      content: Container(
        height: 80,
        alignment: Alignment.center,
        child: Text(
          '$menuNameです',
          style: const TextStyle(color: Colors.black, fontSize: 14.0),
        ),
      ),
      actions: [
        GestureDetector(
          child: const Text(
            'キャンセル',
            style: TextStyle(color: Colors.black, fontSize: 12.0),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ],
    );
  }
}
