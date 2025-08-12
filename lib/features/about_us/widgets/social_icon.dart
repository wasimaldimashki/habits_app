import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habits_app/core/export/lib_exports.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.icon, required this.url});
  final IconData icon;
  final String url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: defaultRadius,
      onTap: () => _launchURL(url),
      child: FaIcon(
        icon,
        size: 36.r,
        color: AppColors.primary,
      ),
    );
  }
}

void _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
