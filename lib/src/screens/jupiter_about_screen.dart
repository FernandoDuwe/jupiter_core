import 'package:flutter/material.dart';
import 'package:jupiter_core/jupiter_core.dart';
import 'package:jupiter_core/src/models/jupiter_about_screen_information.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class JupiterAboutScreen extends StatelessWidget {
  final JupiterAboutScreenInformation information;
  final Widget? appLogo;
  final PackageInfo packageInfo;

  const JupiterAboutScreen(
      {required this.packageInfo,
      required this.information,
      this.appLogo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: JupiterTwoChildrenLayout(
        firstChild: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white38, Colors.black12, Colors.black54],
          )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                this.appLogo ?? Container(),
                Text(
                  this.information.appName,
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
        ),
        secondChild: ListView(
          children: [
            ListTile(
              title: Text(this.information.aboutLabel),
              subtitle: Text(this.information.appName),
            ),
            ListTile(
              title: Text(this.information.aboutVersionLabel),
              subtitle: Text(packageInfo.version),
            ),
            ListTile(
              title: Text(this.information.aboutPolicyTitleLabel),
              subtitle: Text(this.information.aboutPolicySubTitleLabel),
              onTap: () {
                final Uri url = Uri.parse(this.information.aboutPolicyURL);

                launchUrl(url);
              },
              trailing: Icon(Icons.link),
            ),
          ],
        ),
      ),
    );
  }
}
