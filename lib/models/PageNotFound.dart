import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  PageNotFound({
    Key? key,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            elevation: 0,
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                '404 Pagina Non Trovata',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
            stretchTriggerOffset: 150,
          )
        ],
      ),
    );
  }
}
