import 'package:flutter/widgets.dart';

class ListItem extends StatefulWidget {
  final String title;
  ListItem({super.key, required this.title}) {
    print("testr, init: $title");
  }
  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Text(key: ValueKey(widget.title), widget.title);
  }

  @override
  void initState() {
    print("testr, init state: ${widget.title}");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("testr, deactivate: ${widget.title}");
  }

  @override
  void dispose() {
    super.dispose();
    print("testr, dispose: ${widget.title}");
  }
}
