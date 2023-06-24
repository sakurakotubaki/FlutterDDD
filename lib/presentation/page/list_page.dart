import 'package:flutter/material.dart';
import 'package:flutter_ddd/domain/person.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListPage extends ConsumerWidget {
  const ListPage({Key? key}) : super(key: key);

  static const rootName = '/list';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // JSONデータ
    Map<String, dynamic> jsonData = {
      'name': 'John Doe',
      'age': 30,
      'address': '123 Street, City',
    };

    // JSONからPersonオブジェクトにデシリアライズ
    Person person = Person.fromJson(jsonData);

    // PersonオブジェクトをJSONにシリアライズ
    Map<String, dynamic> personJson = person.toJson();

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('name: ${person.name}'),
            Text('age: ${person.age}'),
            Text('address: ${person.address}'),
          ],
        ),
      ),
    );
  }
}
