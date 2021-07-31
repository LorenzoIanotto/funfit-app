import 'package:flutter/material.dart';
import 'package:funfit/exercises.dart';
import 'components/ListElement.dart';
//import 'package:funfit/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Text(
                'FunFit',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              // spaziatore
              SizedBox(
                height: 30,
              ),

              //home, per ora inutilizzata
              /* ListTile(
                title: Text(
                  'Esercizi',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                leading: Icon(
                  Icons.home,
                  size: 30,
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ), */

              // about
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: ListTile(
                  title: Text(
                    'Infromazioni',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  leading: Icon(
                    Icons.info_outline_rounded,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/AboutPage');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            stretch: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.fadeTitle,
              ],
              centerTitle: false,
              title: Text(
                'Esercizi',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListElement(
                index: index,
              ),
              childCount: exercises.length,
            ),
          )
        ],
      ),
    );
  }
}
