import 'package:flutter/material.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_tile.dart';
import 'package:flutter_breadcrumb/src/material/breadcrumb_item.dart';

class MaterialBreadCrumbTile extends BreadCrumbTile {
  const MaterialBreadCrumbTile({Key? key, required MaterialBreadCrumbItem breadCrumbItem}) : super(breadCrumbItem: breadCrumbItem, key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: breadCrumbItem.margin,
      child: Material(
        color: breadCrumbItem.isEnable ? breadCrumbItem.color : breadCrumbItem.disableColor,
        shape: RoundedRectangleBorder(
          borderRadius: breadCrumbItem.borderRadius,
          side: breadCrumbItem.border,
        ),
        child: InkWell(
          onTap: breadCrumbItem.onTap,
          splashColor: breadCrumbItem.splashColor,
          borderRadius: breadCrumbItem.borderRadius as BorderRadius?,
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
