// base path for images
const String baseImagesPath = 'assets/images/';

// pngs
final String chatlyLogo = 'chatly_logo'.png;

// image extension
extension ImageExtension on String {
  // get png imaages paths
  String get png => '$baseImagesPath$this.svg';
}
