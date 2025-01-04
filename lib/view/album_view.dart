import 'package:flutter/material.dart';
import 'package:flutter_practice_project/model/album.dart';
import 'package:flutter_practice_project/provider/album_provider.dart';
import 'package:provider/provider.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late List<Album> albumList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider 패턴 실습'),
      ),
      body: Consumer<AlbumProvider>(
        builder: (context, provider, child) {
          albumList = provider.getAlbumList();
          return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child:
                    Text('${albumList[index].id}: ${albumList[index].title}'),
              );
            },
          );
        },
      ),
    );
  }
}

// BLoC 패턴
// class AlbumView extends StatefulWidget {
//   const AlbumView({super.key});

//   @override
//   State<AlbumView> createState() => _AlbumViewState();
// }

// class _AlbumViewState extends State<AlbumView> {
//   final AlbumBloc _albumBloc = AlbumBloc();

//   @override
//   void initState() {
//     _albumBloc.fetchAllAlbums();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Bloc 패턴 예제'),
//         ),
//         body: StreamBuilder<Albums>(
//           stream: _albumBloc.allAlbums,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               Albums? albumList = snapshot.data;
//               return ListView.builder(
//                 itemCount: albumList?.albums.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('ID: ${albumList?.albums[index].id.toString()}'),
//                         Text('Title: ${albumList?.albums[index].title}'),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text(snapshot.error.toString()),
//               );
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(
//                   strokeWidth: 2,
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
