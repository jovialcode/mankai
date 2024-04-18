import 'package:flutter/material.dart';

import 'package:mankai/common/consts/COLOR_CONST.dart';


class WidgetHomeToolbar extends StatefulWidget {
  @override
  _WidgetHomeToolbarState createState() => _WidgetHomeToolbarState();
}

class _WidgetHomeToolbarState extends State<WidgetHomeToolbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: COLOR_CONST.GREEN2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0), // 왼쪽 상단을 라운드 처리
          bottomRight: Radius.circular(20.0), // 오른쪽 상단을 라운드 처리
        ),
      ),
      height: 70,
      child: Row(
        children: <Widget>[
          _buildNames()
        ],
      ),
    );
  }

  _buildNames() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Khoa Hoang'),
          GestureDetector(
            onTap: () {
            },
            child: Opacity(
              child: Row(
                children: <Widget>[
                  Text('Vietnam')
                ],
              ),
              opacity: 0.5,
            ),
          )
        ],
      ),
    );
  }
}