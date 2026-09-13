import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String? title;
  final Icon leadingIcon;
  final VoidCallback? onTap;
  const ProfileListTile({
    super.key,
    this.title,
    required this.leadingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        onTap: onTap,
        leading: leadingIcon,
        title: Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class SwitchedListTile extends StatelessWidget {
  final String? title;
  final Icon leadingIcon;
  final ValueChanged<bool>? onChanged;
  final bool isSwitched;

  const SwitchedListTile({
    super.key,
    this.title,
    required this.leadingIcon,
    this.onChanged,
    required this.isSwitched,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          title!,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: Transform.scale(
          scale: 0.7,
          child: Switch(
            value: isSwitched,
            onChanged: onChanged,
            inactiveTrackColor: Colors.transparent,
            activeTrackColor: Colors.white,
            activeColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
