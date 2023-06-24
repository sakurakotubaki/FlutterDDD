import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NameButton extends StatelessWidget {
  const NameButton({
    super.key,
    required this.buttonTitle,
    required this.nameRoot,
  });

  final String buttonTitle; // ボタンのタイトルを引数として渡す
  // final Widget pageName; // 画面遷移先のWidgetクラスを引数として渡す
  final String nameRoot; // パスを文字として渡す

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => pageName));
          GoRouter.of(context).goNamed(nameRoot);
        },
        child: Text(buttonTitle));
  }
}
