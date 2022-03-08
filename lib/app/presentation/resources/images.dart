// base path for images
const String baseImagesPath = 'assets/images/';
const String baseIconsPath = 'assets/icons/';

// pngs Images
final String chatlyLogo = 'chatly_logo'.pngImg;
final String phoneBg = 'phone_circle_bg'.pngImg;

//png Icons
final String chatlyIcon = 'chatly_icon'.pngIcon;
final String appleIcon = 'apple_logo'.pngIcon;
final String playstoreIcon = 'playstore_logo'.pngIcon;

// image extension
extension ImageExtension on String {
  // get png images paths
  String get pngImg => '$baseImagesPath$this.png';

  // get png icons paths
  String get pngIcon => '$baseIconsPath$this.png';
}
