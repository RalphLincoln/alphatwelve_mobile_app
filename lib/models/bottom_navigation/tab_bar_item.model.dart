import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';

class TabBarItemModel extends Equatable {
  final int id;
  final String name;
  final Widget icon;

  const TabBarItemModel({
    required this.id,
    required this.name,
    required this.icon,
  });

  @override
  List<Object?> get props => [id, name, icon];
}
