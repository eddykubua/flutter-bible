import 'package:bible_bloc/Feature/InheritedBlocs.dart';
import 'package:flutter/material.dart';

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: true,
      title: Text("History"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.clear_all),
          onPressed: () => InheritedBlocs.of(context).bibleBloc.clearHistory(),
        )
      ],
    );
  }
}
