import 'package:flutter/material.dart' show BuildContext;
import 'package:fluro/fluro.dart' show Handler;

import 'package:ff/page/404/index.dart';

/// 应用入口页
/*
Handler homeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new Application();
});
*/

/// 404页面
Handler pageNotFoundHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
   return PageNoFound();
});
