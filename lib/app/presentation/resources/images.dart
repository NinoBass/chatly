// base path for images
const String baseImagesPath = 'assets/images/';
const String baseIconsPath = 'assets/icons/';

// pngs
final String chatlyLogo = 'chatly_logo'.pngImg;
final String chatlyIcon = 'chatly_icon'.pngIcon;

// image extension
extension ImageExtension on String {
  // get png images paths
  String get pngImg => '$baseImagesPath$this.png';

  // get png icons paths
  String get pngIcon => '$baseIconsPath$this.png';
}
