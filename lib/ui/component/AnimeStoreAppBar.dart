import 'package:anime_app/ui/theme/ColorValues.dart';
import 'package:flutter/material.dart';

class AnimeStoreAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final Object heroTag;

  const AnimeStoreAppBar(
      {Key key, this.heroTag, @required this.title, this.actions})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //expandedHeight: expandedHeight,
      floating: true,
      elevation: 4.0,

      title: Hero(
        tag: heroTag,
        child: Container(
          child: Material(
            color: Colors.transparent,

            elevation: .0,
            child: Text(title,
                style: Theme.of(context).textTheme.title.copyWith(
                  color: textPrimaryColor,
            )),
          ),
        ),
      ),

      pinned: false,
      snap: false,
      actions: actions,
      centerTitle: true,
      backgroundColor: primaryColor, //primaryColor.withOpacity(.9),
    );
  }
}
