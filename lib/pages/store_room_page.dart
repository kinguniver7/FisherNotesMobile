import 'package:fisher_notes/common/f_n_icons.dart';
import 'package:fisher_notes/common/left_drawer.dart';
import 'package:fisher_notes/models/thing_model.dart';
import 'package:fisher_notes/pages/store_room/fab_bottom_app_bar.dart';
import 'package:fisher_notes/pages/store_room/fab_with_icons.dart';
import 'package:fisher_notes/widgets/thing_card.dart';
import 'package:flutter/material.dart';

class StoreRoomPage extends StatefulWidget {
  StoreRoomPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StoreRoomPage createState() => _StoreRoomPage();
}

class _StoreRoomPage extends State<StoreRoomPage> with TickerProviderStateMixin {

  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(),
      appBar: AppBar(
        title: Text('Store Room'),   
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
           IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              
            },
          )
        ],             
        ),
      body: Column(
        children: <Widget>[
          buildThingList()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(context),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Add',        
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: FNIcons.rod, text: 'Rods'),
          FABBottomAppBarItem(iconData: FNIcons.reel, text: 'Reels'),
          FABBottomAppBarItem(iconData: FNIcons.bait, text: 'Baits'),
          FABBottomAppBarItem(iconData: FNIcons.tackle, text: 'Tackle'),
        ],
      ),
      
      );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ FNIcons.tackle, FNIcons.bait, FNIcons.reel, FNIcons.rod  ];
    return AnchoredOverlay(      
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),          
          child: FabWithIcons(
            icons: icons,            
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }

  Widget buildThingList() {
    return Expanded(
      child: GridView.count(
        //itemCount: foods.length,
        childAspectRatio: 0.85,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 2,
        physics: BouncingScrollPhysics(),
        children: things.map((food) {
          return ThingCard(food);
        }).toList(),
      ),
    );
  }
}



class AnchoredOverlay extends StatelessWidget {
  final bool showOverlay;
  final Widget Function(BuildContext, Offset anchor) overlayBuilder;
  final Widget child;

  AnchoredOverlay({
    this.showOverlay,
    this.overlayBuilder,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return OverlayBuilder(
          showOverlay: showOverlay,
          overlayBuilder: (BuildContext overlayContext) {
            RenderBox box = context.findRenderObject() as RenderBox;
            final center = box.size.center(box.localToGlobal(const Offset(0.0, 0.0)));

            return overlayBuilder(overlayContext, center);
          },
          child: child,
        );
      }),
    );
  }
}

class OverlayBuilder extends StatefulWidget {
  final bool showOverlay;
  final Function(BuildContext) overlayBuilder;
  final Widget child;

  OverlayBuilder({
    this.showOverlay = false,
    this.overlayBuilder,
    this.child,
  });

  @override
  _OverlayBuilderState createState() => _OverlayBuilderState();
}

class _OverlayBuilderState extends State<OverlayBuilder> {
  OverlayEntry overlayEntry;

  @override
  void initState() {
    super.initState();

    if (widget.showOverlay) {
      WidgetsBinding.instance.addPostFrameCallback((_) => showOverlay());
    }
  }

  @override
  void didUpdateWidget(OverlayBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) => syncWidgetAndOverlay());
  }

  @override
  void reassemble() {
    super.reassemble();
    WidgetsBinding.instance.addPostFrameCallback((_) => syncWidgetAndOverlay());
  }

  @override
  void dispose() {
    if (isShowingOverlay()) {
      hideOverlay();
    }

    super.dispose();
  }

  bool isShowingOverlay() => overlayEntry != null;

  void showOverlay() {
    overlayEntry = OverlayEntry(
      builder: widget.overlayBuilder,
    );
    addToOverlay(overlayEntry);
  }

  void addToOverlay(OverlayEntry entry) async {
    print('addToOverlay');
    Overlay.of(context).insert(entry);
  }

  void hideOverlay() {
    print('hideOverlay');
    overlayEntry.remove();
    overlayEntry = null;
  }

  void syncWidgetAndOverlay() {
    if (isShowingOverlay() && !widget.showOverlay) {
      hideOverlay();
    } else if (!isShowingOverlay() && widget.showOverlay) {
      showOverlay();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class CenterAbout extends StatelessWidget {
  final Offset position;
  final Widget child;

  CenterAbout({
    this.position,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position.dy,
      left: position.dx,
      child: FractionalTranslation(
        translation: const Offset(-0.5, -0.5),
        child: child,
      ),
    );
  }
}