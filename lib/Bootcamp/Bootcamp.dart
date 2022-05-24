import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';

import '../clipper.dart';

class BootcampPage extends StatefulWidget {
  int BCount;
  String skill;
  BootcampPage({required this.skill, required this.BCount});
  @override
  _CareerPg createState() => _CareerPg();
}

class _CareerPg extends State<BootcampPage> {
  unitList(Height) {
    print(widget.BCount);
    print(widget.skill);
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Bootcamp')
            .doc('Select' + widget.BCount.toString())
            .collection(widget.skill)
            .doc('video')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.data() == null) {
            return Container();
          } else {
            Map<String, dynamic>? data =
                snapshot.data!.data() as Map<String, dynamic>?;

            List<String> values = data!.keys.toList();
            values.sort();
            // Map<String, dynamic> data = {'zz': 'zz'};
            return GridView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: values.length,
              itemBuilder: (BuildContext context, int i) {
                print(i);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.notes,
                            color: Colors.red,
                          ),
                          title: Text(
                            values[i],
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: Container(
                            width: 35,
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.library_books,
                              size: 35,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/Bvideo.png',
                          height: 130,
                        ),
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextButton(
                                child: const Text('VISIT HERE'),
                                onPressed: () {
                                  // _requestDownload(data[values[i]]);
                                },
                              ),
                              // FavoriteButton(
                              //   iconSize: 40,
                              //   isFavorite: false,
                              //   // iconDisabledColor: Colors.white,
                              //   valueChanged: (_isFavorite) {
                              //     print('Is Favorite : $_isFavorite');
                              //   },
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            );
          }
        });
  }
  //
  // static void downloadCallback(
  //     String id, DownloadTaskStatus status, int progress) {
  //   // if (debug) {
  //   //   print(
  //   //       'Background Isolate Callback: task ($id) is in status ($status) and process ($progress)');
  //   // }
  //   final SendPort send =
  //       IsolateNameServer.lookupPortByName('downloader_send_port')!;
  //   send.send([id, status, progress]);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   FlutterDownloader.registerCallback(downloadCallback);
  // }

  @override
  Widget build(BuildContext context) {
    var Height = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.vertical);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue[100],
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    height: Height * .25,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFF0F2027),
                          Color(0xFF203A43),
                          Color(0xFF2C5364),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                CupertinoIcons.back,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Bootcamp",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                size: 35,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/Bootcamp.jpg',
                          width: 250,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
                unitList(Height),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// void _requestDownload(String link) async {
//   final Directory appDocDir = await getApplicationDocumentsDirectory();
//   final taskId = await FlutterDownloader.enqueue(
//     url: link,
//     savedDir: appDocDir.path,
//     showNotification:
//         true, // show download progress in status bar (for Android)
//     openFileFromNotification:
//         true, // click on notification to open downloaded file (for Android)
//     saveInPublicStorage: true,
//   );
// }

// void openfile(String url) async {
//   File file = await toFile(url);
//   OpenFile.open(file.path);
// }
}
