import 'package:flutter/cupertino.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_tile.dart';
import 'package:flutter_breadcrumb/src/cupertino/breadcrumb_item.dart';

class CupertinoBreadCrumbTile extends BreadCrumbTile {
  const CupertinoBreadCrumbTile({Key? key, required CupertinoBreadCrumbItem breadCrumbItem}) : super(breadCrumbItem: breadCrumbItem, key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: breadCrumbItem.margin,
      child: Container(
        color: breadCrumbItem.isEnable ? breadCrumbItem.color : breadCrumbItem.disableColor,
        child: CupertinoInkWell(
          onPressed: breadCrumbItem.onTap,
          child: Padding(
            padding: breadCrumbItem.padding,
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: breadCrumbItem.isEnable ? breadCrumbItem.textColor : breadCrumbItem.disabledTextColor,
              ),
              child: breadCrumbItem.content,
            ),
          ),
        ),
      ),
    );
  }
}

/// An [InkWell] equivalent for Cupertino. Simply colors the background of the container.
class CupertinoInkWell extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const CupertinoInkWell({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  bool get enabled => onPressed != null;

  @override
  State<CupertinoInkWell> createState() => _CupertinoInkWellState();
}

class _CupertinoInkWellState extends State<CupertinoInkWell> {
  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      setState(() {
        _buttonHeldDown = true;
      });
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      setState(() {
        _buttonHeldDown = false;
      });
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      setState(() {
        _buttonHeldDown = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: enabled ? _handleTapDown : null,
      onTapUp: enabled ? _handleTapUp : null,
      onTapCancel: enabled ? _handleTapCancel : null,
      onTap: widget.onPressed,
      child: Semantics(
        button: true,
        child: _buttonHeldDown
            ? Container(
                color: CupertinoColors.secondarySystemFill.resolveFrom(context),
                child: widget.child,
              )
            : widget.child,
      ),
    );
  }
}
