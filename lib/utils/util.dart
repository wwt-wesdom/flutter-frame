import 'package:flutter/material.dart' show BuildContext;
import 'dart:io' show Platform;
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter/services.dart' show Clipboard, ClipboardData;

/// 手机号码校验正则
const String phoneNumRule = r"^[0-9]*$";

/// 注册登陆密码强度校验正则
const String passwordRule = r"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$";

/// 邀请码正则
const String invitationCodeRule = r"^[0-9a-zA-Z]+$";

/// 身份证号码校验正则
const String idCardNumberRule = r"^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$";

class Utils {
  /// 获取本地图片路径
  static String getImgPath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }

  /// 校验手机号码有效性
  static bool checkPhoneNum(String phoneNum) {
    if (phoneNum == null || phoneNum.isEmpty) {
      return false;
    } else {
      final RegExp phoneExp = new RegExp(phoneNumRule);
      return phoneExp.hasMatch(phoneNum);
    }
  }

  /// 校验注册登陆密码强度
  static bool checkPassword(String pwd) {
    final RegExp passwordExp = new RegExp(passwordRule);
    return passwordExp.hasMatch(pwd);
  }

  /// 验证邀请码有效性
  static bool checkInvitationCode(String invitationCode) {
    if (invitationCode != null) {
      final RegExp zipCodeExp = new RegExp(invitationCodeRule);
      return zipCodeExp.hasMatch(invitationCode);
    } else {
      return false;
    }
  }

  /// 验证身份证号码有效性
  static bool checkIdCardNumber(String idCardNumber) {
    if (idCardNumber != null) {
      final RegExp idCardNumberExp = new RegExp(idCardNumberRule);
      return idCardNumberExp.hasMatch(idCardNumberRule);
    } else {
      return false;
    }
  }

  /// 获取设备平台类型
  static String getPlatform() {
    if (Platform.isIOS) {
      return 'ios'; // ios
    } else if (Platform.isAndroid) {
      return 'android'; // android
    } else {
      return 'other'; // other
    }
  }

  /// 判断当前运行环境是否是生产环境 true: 是, false: 否
  static bool isProd() {
    return bool.fromEnvironment('dart.vm.product');
  }

  /// 时间格式化（标准类型时间） 默认 yyyy-MM-dd HH:mm:ss
  static String getLocalTime(String time,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (time == null || time.isEmpty) return '';
    DateFormat formatter = new DateFormat(format);
    return formatter.format(DateTime.parse(time).toLocal());
  }

  /// 时间格式化（时间戳） 默认 yyyy-MM-dd HH:mm:ss
  static String getLocalTimeByTimestamp(int time,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (time == null) return '';
    DateFormat formatter = new DateFormat(format);
    String tempTime =
        DateTime.fromMillisecondsSinceEpoch(time, isUtc: true).toString();
    return formatter.format(DateTime.parse(tempTime).toLocal());
  }

  /// 复制内容到剪粘板
  static Future<bool> copyToClipboard(BuildContext context, String text) async {
    if (text.isEmpty) return false;
    try {
      await Clipboard.setData(new ClipboardData(text: text));
      return true;
    } catch (e) {
      return false;
    }
  }

  /// 用户等级文字映射
  static String userLevelStr(int level) {
    switch(level) {
      case 0 :
        return '注册用户';
      case 1 :
        return '普通用户';
      case 2 :
        return '白金会员';
      case 3 :
        return '黑金会员';
      default :
        return '注册用户';
    }
  }

}
