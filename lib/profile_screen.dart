import 'package:assignment_17/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final bool isDark;

  final ValueChanged<bool> onThemeChanged;
  const ProfileScreen(
      {super.key, required this.isDark, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    bool chatheads = true;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: const [
          Icon(
            Icons.power_settings_new_outlined,
            color: Colors.grey,
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/cat.jpeg"),
              ),
              const Text(
                "Reem Ezzat",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              const Text(
                "user",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              ),
              SwitchedListTile(
                leadingIcon: const Icon(Icons.dark_mode),
                title: "Dark mode",
                isSwitched: isDark,
                onChanged: onThemeChanged,
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.window_outlined,
                  color: Color.fromARGB(255, 246, 202, 135),
                ),
                title: "Story",
              ),
              SwitchedListTile(
                leadingIcon: const Icon(
                  Icons.person_pin,
                  color: Color.fromARGB(255, 249, 155, 186),
                ),
                title: "Chat heads",
                isSwitched: chatheads,
                onChanged: (value) {},
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.person_add_alt,
                  color: Color.fromARGB(255, 138, 180, 251),
                ),
                title: "Groups",
              ),
              const Divider(
                endIndent: 60,
                indent: 60,
                color: Color.fromARGB(255, 212, 212, 212),
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.image_outlined,
                  color: Color.fromARGB(255, 74, 126, 168),
                ),
                title: "Media and Photos",
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.settings_outlined,
                  color: Colors.greenAccent,
                ),
                title: "Settings and privacy",
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.message_outlined,
                  color: Colors.green,
                ),
                title: "Help center",
              ),
              const ProfileListTile(
                leadingIcon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 215, 148, 226),
                ),
                title: "Notification",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
