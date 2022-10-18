import 'package:flutter/material.dart';
import 'tag_view.dart';
import 'tags_controller.dart';
import 'tags_inherited_widget.dart';

class TextfieldTags extends StatefulWidget {
  final TagsController? controller;
  const TextfieldTags({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<TextfieldTags> createState() => _TextfieldTagsState();
}

class _TextfieldTagsState extends State<TextfieldTags> {
  late TagsController controller;
  @override
  void initState() {
    controller = widget.controller ?? TagsController.init(values: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TagsInheritedWidget(
        controller: widget.controller,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Wrap(
            spacing: 6,
            runSpacing: 6,
            children: controller.values
                .map((value) => TagView(value: value))
                .toList(),
          ),
        ),
      ),
    );
  }
}
