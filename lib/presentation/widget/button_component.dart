import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PushButton extends StatelessWidget {
  const PushButton({
    super.key,
    required this.buttonTitle,
    required this.rootPath,
  });

  final String buttonTitle; // ボタンのタイトルを引数として渡す
  // final Widget pageName; // 画面遷移先のWidgetクラスを引数として渡す
  final String rootPath; // パスを文字として渡す

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => pageName));
          GoRouter.of(context).go(rootPath);
        },
        child: Text(buttonTitle));
  }
}
