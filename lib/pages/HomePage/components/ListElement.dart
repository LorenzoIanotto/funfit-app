import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../exercises.dart';
import '../../DetailPage/DetailPage.dart';
import 'package:animations/animations.dart';

class ListElement extends StatelessWidget {
  ListElement({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: OpenContainer(
        openBuilder: (context, closedContainer) => DetailPage(index: this.index),
        transitionDuration: Duration(milliseconds: 400),
        closedColor: Theme.of(context).cardColor,
        closedBuilder: (context, openContainer) => InkWell(
          onTap: () {openContainer();},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  exercises[this.index].name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(exercises[index].thumbnailAsset),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

