class MenuModel {
  String menuIcon;
  String menuTitle;
  String? menuStatus;
  bool menuTrailing;

  MenuModel(
      {required this.menuIcon,
      required this.menuTitle,
      this.menuStatus,
      required this.menuTrailing});
}

List<MenuModel> menuModelList = [
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Edit Profile',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Shipping Address',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Wishlist',
      menuStatus: 'New',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Order History',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Track Order',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png', menuTitle: 'Cards', menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Notifications',
      menuTrailing: true),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'ELITE+ Program - ON',
      menuTrailing: false),
  MenuModel(
      menuIcon: 'assets/images/fb.png',
      menuTitle: 'Log Out',
      menuTrailing: false),
];
