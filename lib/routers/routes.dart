import 'package:fluro/fluro.dart';
import 'package:ff/routers/router_handler.dart';

class Routes {
  /// 入口导航页面
  static String navTab = '/nav-tab';

  /// 登陆注册
  static String loginSignUp = '/login-signup';

  /// 注册信息填写
  static String perfectInfo = '/perfect-info';

  /// 选择所在国家及区号
  static String selectCountry = '/select-country';

  /// 购物车
  static String shoppingCart = '/shopping-cart';

  /// 分类
  static String category = '/Category';

  /// 商品搜索页
  static String searchEntrance = '/search-entrance';

  /// 商品搜索结果
  static String searchResult = '/search-result';

  /// 商品详情
  static String commodityDetails = '/commodity-details';

  /// 商品信息、企业信息展示
  static String commodityEnterpriseInfo = '/commodity-enterprise-info';

  /// 确认订单
  static String confirmOrder = '/confirm-order';

  /// 订单完成
  static String orderFinish = '/order-finish';

  /// 订单列表
  static String orderList = '/order-list';

  /// 订单详情
  static String orderDetail = '/order-detail';

  /// 地址管理
  static String addressManagement = '/address-management';

  /// 添加、编辑地址
  static String addAddress = '/add-address';

  /// 设置
  static String userSetting = '/user-setting';

  /// 个人信息
  static String personalInfo = '/personal-info';

  /// 设置昵称
  static String setNickname = '/set-nickname';

  /// 微信二维码名片
  static String wechatCard = '/wechat-card';

  /// 实名认证
  static String verified = '/verified';

  /// 品牌馆
  static String brandHall = '/brand-hall';

  /// 品牌详情
  static String brandDetail = '/brand-detail';

  /// webView h5
  static String abmH5 = '/abm-h5';

  /// 404页面
  static String pageNotFound = '/page-not-found';

  static void configureRoutes(Router router) {
    router.notFoundHandler = pageNotFoundHandler;
    router.define(pageNotFound, handler: pageNotFoundHandler, transitionType: TransitionType.native);
  }
}
