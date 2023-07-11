import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
/// [menuName]はDialogのタイトルに使う
///
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key, required this.menuName});

  final String menuName;

  @override
  Widget build(BuildContext context) {
    //デバッグコンソールに正しく値が出るかどうか確認用のコード
    print(menuName);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
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
                    menuName: menuName,
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
  const AlertDialogSample({super.key, required this.menuName});

  final String menuName;

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
          //onTap:シングルクリック
          onTap: () {
            //pop:前のページに遷移するメソッド
            context.pop();
          },
        ),
        //GestureDetector:画面のタップやスワイプに関する処理の実装が可能
        GestureDetector(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            ),
            onTap: () {
              context.pop();
            }),
      ],
    );
  }
}
