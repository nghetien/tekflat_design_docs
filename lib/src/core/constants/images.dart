import 'dart:math';

class AppAssetImages {
  const AppAssetImages._();

  static const String logo = 'assets/images/logo.png';
  static const String vietnam = 'assets/images/kingdom.png';
  static const String kingdom = 'assets/images/vietnam.png';
  static const String avatar1 = 'assets/images/avatar-1.png';
  static const String avatar2 = 'assets/images/avatar-2.png';
  static const String avatar3 = 'assets/images/avatar-3.png';
  static const String avatar4 = 'assets/images/avatar-4.png';
  static const String avatar5 = 'assets/images/avatar-5.png';
  static const String avatar6 = 'assets/images/avatar-6.png';
  static const String avatar7 = 'assets/images/avatar-7.png';
  static const String avatar8 = 'assets/images/avatar-8.png';
  static const String banner = 'assets/images/banner.svg';
  static const String designValues = 'assets/images/design_values.svg';
  static const String library = 'assets/images/library.svg';
  static const String guide = 'assets/images/guide.svg';
  static const String alert = 'assets/images/alert.svg';
  static const String button = 'assets/images/button.svg';
  static const String datatable = 'assets/images/datatable.svg';
  static const String dropdown = 'assets/images/dropdown.svg';
  static const String form = 'assets/images/form.svg';
  static const String notify = 'assets/images/notify.svg';
  static const String responsive = 'assets/images/responsive.svg';
  static const String selector = 'assets/images/selector.svg';

  static String get randomAvatar {
    final random = Random();
    final index = random.nextInt(8);
    switch (index) {
      case 0:
        return avatar1;
      case 1:
        return avatar2;
      case 2:
        return avatar3;
      case 3:
        return avatar4;
      case 4:
        return avatar5;
      case 5:
        return avatar6;
      case 6:
        return avatar7;
      case 7:
        return avatar8;
      default:
        return avatar1;
    }
  }

  static const String networkAvatarMe = 'https://media.licdn.com/dms/image/D5603AQGeKbf79Dzh1Q/profile-displayphoto-shrink_800_800/0/1673970801403?e=1692230400&v=beta&t=HqjEZfuwSKCaUxC_36g_3e86snPE7qlOM6EE33oqfu8';
}