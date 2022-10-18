import 'package:flutter/material.dart';

import 'tags_controller.dart';

class TagsInheritedWidget extends InheritedWidget {
  final TagsController? controller;
  TagsInheritedWidget({
    Key? key,
    required super.child,
    this.controller,
  }) : super(key: key) {
    controller ?? TagsController.init(values: []);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static TagsInheritedWidget of(BuildContext context) {
    final TagsInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<TagsInheritedWidget>();
    assert(result != null, 'No TagsInheritedWidget found in context');
    return result!;
  }
}
