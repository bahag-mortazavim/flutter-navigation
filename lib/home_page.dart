import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declaraed as children
      // routes of /dashboard
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],
      builder: (context, child, animation) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.bounceIn;

        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return Scaffold(
          backgroundColor: Colors.blue.shade100,
          appBar: AppBar(
            backgroundColor: Colors.indigo.shade400,
            title: const Text('Auto Route Demo'),
            centerTitle: true,
            leading: const AutoBackButton(),
          ),
          body: SlideTransition(
            position: animation.drive(tween),
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.indigo.shade400,
            selectedItemColor: Colors.grey.shade300,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.post_add,
                  size: 30,
                ),
                label: 'Posts',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: 'Users',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: 'Settings',
              )
            ],
          ),
        );
      },
    );
  }
}
