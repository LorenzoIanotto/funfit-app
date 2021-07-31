import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    String githubAsset;

    if (Theme.of(context).primaryColor == Colors.black) {
      githubAsset = 'assets/icons/github_dark.svg';
    } else {
      githubAsset = 'assets/icons/github_light.svg';
    }

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
                'Informazioni',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
            expandedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              ListTile(
                title: Text('Vedi su Github'),
                leading: SvgPicture.asset(githubAsset),
                onTap: () =>
                    launch('https://github.com/LorenzoIanotto/funfit-app'),
              )
            ]),
          )
        ],
      ),
    );
  }
}
