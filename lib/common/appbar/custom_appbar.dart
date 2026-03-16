import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.backgroundColor = Colors.transparent,
    this.leading,
    this.centerTitle = true,
    this.actions,
    this.padding = const EdgeInsets.symmetric(horizontal: 24), this.elevation =0,
  });

  final Widget? title;
  final Color backgroundColor;
  final Widget? leading;
  final bool centerTitle;
  final List<Widget>? actions;
  final EdgeInsetsGeometry padding;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AppBar(surfaceTintColor: Colors.transparent,
        elevation: elevation,
        title: title,
        backgroundColor: backgroundColor,
        leading: leading,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
