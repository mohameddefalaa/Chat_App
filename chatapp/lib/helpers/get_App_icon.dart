import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget GetAppIcon() {
  return SvgPicture.asset(
    'assets/images/chat-manager-svgrepo-com.svg',
    height: 150,
    colorFilter: ColorFilter.mode(kPrimarrycolor, BlendMode.srcIn),
  );
}
