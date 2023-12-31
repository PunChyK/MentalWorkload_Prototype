import 'package:flutter/material.dart';

class HeroDialogRoute<T> extends PageRoute<T>{

  HeroDialogRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) : _builder = builder, super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  // TODO: implement opaque
  bool get opaque => false;

  @override
  // TODO: implement barrierDismissible
  bool get barrierDismissible => true;


  @override
  // TODO: implement barrierColor
  Color? get barrierColor => Colors.black54;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => 'Popup dialog open';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return _builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions
    return child;
  }
  
  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => const Duration(milliseconds: 300);

}