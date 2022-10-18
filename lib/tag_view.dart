import 'package:flutter/material.dart';

class TagView extends StatefulWidget {
  final String value;
  const TagView({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<TagView> createState() => _TagViewState();
}

class _TagViewState extends State<TagView> {
  late String content = widget.value;
  late TextEditingController textController;
  late double width = 50;
  late bool hasForcus = false;
  final style = const TextStyle(
    color: Colors.black,
    fontSize: 15,
  );
  final focusNode = FocusNode();
  @override
  void initState() {
    textController = TextEditingController(text: content);
    focusNode.addListener(forcusHandler);
    resetWitdh();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.removeListener(forcusHandler);

    super.dispose();
  }

  void resetWitdh() {
    width = content.length * 9;
  }

  void forcusHandler() {
    setState(() {
      hasForcus = focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      width: width + 15 + (hasForcus ? 0 : 18),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.left,
              focusNode: focusNode,
              controller: textController,
              style: style,
              maxLines: null,
              decoration: const InputDecoration(
                isDense: true,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 6, right: 0, top: 2, bottom: 2),
              ),
              onChanged: (text) {
                setState(() {
                  content = text;
                  resetWitdh();
                });
              },
            ),
          ),
          hasForcus
              ? const SizedBox(
                  height: 30,
                )
              : const SizedBox(
                  width: 24,
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.cancel_outlined,
                          size: 20,
                        )),
                  ),
                )
        ],
      ),
    );
  }
}
