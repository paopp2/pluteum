import 'package:flutter/material.dart';
import 'package:pluteum/constants.dart';
import 'package:pluteum/ui/components/custom_icon_button.dart';
import 'package:pluteum/ui/components/pluteum_scaffold.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen_id';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PanelController panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
        PluteumScaffold(
          controller: panelController,
          customAppbarRow: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomIconButton(
                iconData: Icons.menu,
                constraints: constraints,
                onPressed: () {
                  setState(() {
                    (panelController.isPanelClosed) ? panelController.open() : panelController.close();
                  });
                },
              ),
              SizedBox(
                width: constraints.maxWidth * 1/5,
                child: Image.asset(
                  'images/logos/pluteum_word_logo.png',
                ),
              ),
              Spacer(),
              CustomIconButton(
                iconData: Icons.search,
                constraints: constraints,
                onPressed: () {
                  //TODO: Implement function
                },
              ),
              CustomIconButton(
                iconData: Icons.notifications,
                constraints: constraints,
                onPressed: () {
                  //TODO: Implement function
                },
              )
            ],
          ),
          constraints: constraints,
          body: DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight * 0.5),
                child: Container(
                  height: constraints.maxHeight * 1/8,
                  color: Colors.white,
                  child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BubbleTabIndicator(
                      indicatorHeight: 25.0,
                      indicatorColor: Colors.blueAccent,
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    unselectedLabelColor: kAccentColor,
                    tabs: [
                      Text(
                        'Top',
                      ),
                      Text(
                        'Romance',
                      ),
                      Text(
                        'Crime/Mystery',
                      ),
                      Text(
                        'SciFi/Fantasy',
                      ),
                      Text(
                        'Horror',
                      )
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  //TODO: Implement individual tab view widgets
                  Container(
                    color: Colors.white,
                    child: ListView.builder(
                      itemBuilder: (context, int) {
                        return ListTile(
                          title: Text('Daymiel'),
                        );
                      },
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: ListView.builder(
                        itemBuilder: (context, int) {
                          return ListTile(
                            title: Text('Gwapo'),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Kaayo'),
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
