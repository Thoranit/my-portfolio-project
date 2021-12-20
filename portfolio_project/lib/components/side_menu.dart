import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_project/components/skills.dart';
import 'package:portfolio_project/constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  ScrollController _scrollController = ScrollController();

  void _scrollListener() {
    if (!_scrollController.hasClients) {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 3), curve: Curves.easeInOut);
    }
  }

  @override
  void initState() {
    _scrollController = new ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.all(defaultPadding),
              child: SafeArea(
                child: Column(
                  children: [
                    AreaInfoText(
                      title: 'Residence',
                      text: 'Thailand',
                    ),
                    AreaInfoText(
                      title: 'City',
                      text: 'Bangkok',
                    ),
                    AreaInfoText(
                      title: 'Age',
                      text: '31',
                    ),
                    AreaInfoText(
                      title: 'Phone Number',
                      text: '+66-628323918',
                    ),
                    AreaInfoText(
                      title: 'Email',
                      text: 'thoranit.noy@gmail.com',
                    ),
                    AreaInfoText(
                      title: 'FB',
                      text: 'facebook.com/noy.thoranit',
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'DOWNLOAD CV',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              Icon(
                                Icons.download,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ],
                          ),
                        )),
                    Container(
                      color: Color(0xFF24242E),
                      margin: EdgeInsets.only(top: defaultPadding),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset('assets/images/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/images/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/images/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/images/behance.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
