import 'package:flutter/material.dart';
import 'package:pluteum/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PluteumScaffold extends StatelessWidget {
  const PluteumScaffold({
    Key key,
    @required this.constraints,
    @required this.body,
    @required this.customAppbarRow,
    this.controller,
  }) : super(key: key);

  final BoxConstraints constraints;
  final Widget body;
  final Row customAppbarRow;
  final PanelController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        controller: controller,
        defaultPanelState: PanelState.OPEN,
        isDraggable: false,
        maxHeight: constraints.maxHeight - 120,
        minHeight: constraints.maxHeight * 5/10,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        panel: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: constraints.maxHeight * (8.5 / 10),
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: body,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              color: kAccentColor,
              child: Padding(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight * 1.5/10,
                ),
                child: SizedBox(
                  height: constraints.maxHeight * 3.5/10,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        title: Text('Settings'),
                      ),
                      ListTile(
                        title: Text('Book History'),
                      ),
                      ListTile(
                        title: Text('About us'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Container(
                height: constraints.maxHeight * 1.5 / 10,
                child: Center(
                  child: customAppbarRow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
