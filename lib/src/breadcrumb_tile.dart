import 'package:flutter/widgets.dart';

import 'package:flutter_breadcrumb/src/breadcrumb_item.dart';

abstract class BreadCrumbTile extends StatelessWidget {
  final BreadCrumbItem breadCrumbItem;

  const BreadCrumbTile({Key? key, required this.breadCrumbItem}) : super(key: key);
}
