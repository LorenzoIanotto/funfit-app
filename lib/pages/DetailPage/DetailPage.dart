import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:funfit/exercises.dart';
import 'components/VideoPlayerWidget.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_down_sharp),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                exercises[this.index].name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
            stretchTriggerOffset: 100,
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(<Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: VideoPlayerWidget(
                      videoAsset: exercises[index].videoAsset,
                      thumbnailAsset: exercises[index].thumbnailAsset,
                      firstFrame: exercises[index].firstFrame,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(exercises[index].description,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200)),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
