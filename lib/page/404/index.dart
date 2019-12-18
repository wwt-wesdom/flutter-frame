import 'package:flutter/material.dart';

import 'package:ff/utils/index.dart' show AppColors, Utils;

class PageNoFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('页面未找到'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Utils.getImgPath('common/page_not_found'),
              width: 150,
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text('页面走丢了~', style: TextStyle(color: Color(0xff999999), fontSize: 14,),)
            )
          ],
        ),
      )
    );
  }
}
