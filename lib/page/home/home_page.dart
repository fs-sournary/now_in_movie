import 'package:flutter/material.dart';
import 'package:now_in_movie/page/navigation/destination.dart';
import 'package:now_in_movie/page/navigation/library_destination_view.dart';
import 'package:now_in_movie/page/navigation/movie_destination_view.dart';
import 'package:now_in_movie/page/navigation/people_destination_view.dart';
import 'package:now_in_movie/page/navigation/setting_destination_view.dart';
import 'package:now_in_movie/page/navigation/tv_destination_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  late final List<GlobalKey<NavigatorState>> navigatorKeys;
  late final List<AnimationController> destinationFaders;
  late final List<Widget> destinationViews;
  int selectedIndex = 0;

  AnimationController _buildFaderController() {
    final controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        setState(() {});
      }
    });
    return controller;
  }

  @override
  void initState() {
    super.initState();
    navigatorKeys = List<GlobalKey<NavigatorState>>.generate(
        destinations.length, (index) => GlobalKey()).toList();
    destinationFaders = List<AnimationController>.generate(
        destinations.length, (index) => _buildFaderController()).toList();
    destinationViews = destinations.map((destination) {
      final index = destination.index;
      final Widget view;
      switch (index) {
        case 0:
          view = MovieDestinationView(navigationKey: navigatorKeys[index]);
          break;
        case 1:
          view = TvDestinationView(navigationKey: navigatorKeys[index]);
          break;
        case 2:
          view = PeopleDestinationView(navigationKey: navigatorKeys[index]);
          break;
        case 3:
          view = LibraryDestinationView(navigationKey: navigatorKeys[index]);
          break;
        default:
          view = SettingDestinationView(navigationKey: navigatorKeys[index]);
          break;
      }
      // return FadeTransition(
      //   opacity: destinationFaders[index]
      //       .drive(CurveTween(curve: Curves.fastOutSlowIn)),
      //   child: view,
      // );
      return view;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final navigator = navigatorKeys[selectedIndex].currentState!;
        if (!navigator.canPop()) {
          return true;
        }
        navigator.pop();
        return false;
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: destinations.map((destination) {
            final int index = destination.index;
            final Widget view = destinationViews[index];
            final AnimationController controller = destinationFaders[index];
            if (index == selectedIndex) {
              controller.forward();
              return Offstage(offstage: false, child: view);
            } else {
              controller.reverse();
              if (controller.isAnimating) {
                return IgnorePointer(child: view);
              }
              return Offstage(child: view);
            }
          }).toList(),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          destinations: destinations.map((destination) {
            return NavigationDestination(
              icon: Icon(destination.icon),
              label: destination.title,
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (final controller in destinationFaders) {
      controller.dispose();
    }
    super.dispose();
  }
}
