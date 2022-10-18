import 'package:flutter/material.dart';
import 'package:textfield_tags/tags_controller.dart';
import 'package:textfield_tags/textfield_tags.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Plugin example app'),
            ),
            body: TextfieldTags(
              controller: TagsController.init(
                values: [
                  "hacnguyen1412@gmail.com",
                  "nguyenmanhtoan@gapo.com",
                  "nguyenchithanh@gapo.com.vn",
                  "mmmmmmm00000@gapo.com.vn",
                ],
              ),
            )),
      ),
    );
  }
}
