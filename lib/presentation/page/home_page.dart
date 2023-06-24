import 'package:flutter/material.dart';
import 'package:flutter_ddd/common/router_path.dart';
import 'package:flutter_ddd/presentation/page/list_page.dart';
import 'package:flutter_ddd/presentation/widget/button_component.dart';
import 'package:flutter_ddd/presentation/widget/name_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  static const rootName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PushButton(buttonTitle: 'ListPage', rootPath: RouterPath.list),
            const SizedBox(height: 20),
            NameButton(buttonTitle: 'NamePage', nameRoot: ListPage.rootName),
          ],
        ),
      ),
    );
  }
}
