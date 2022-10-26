import 'package:flutter/material.dart';

class SittingCustom extends StatelessWidget {
  const SittingCustom({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(icon, size: 40, color: Colors.purple),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: onTap,
    );
  }
}
