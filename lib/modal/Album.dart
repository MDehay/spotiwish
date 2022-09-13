import 'package:spotiwish/modal/Song.dart';

class Album {
  final String name;
  final String asset_url;
  final List<Song> songs;

  Album({required this.name, required this.asset_url, required this.songs});
}
