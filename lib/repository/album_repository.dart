import 'package:flutter_practice_project/data_provider/api_provider.dart';
import 'package:flutter_practice_project/model/albums.dart';

class AlbumRepository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();
}
