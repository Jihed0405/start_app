import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app/components/bottom_navigation_bar.dart';
import 'package:start_app/screens/details_screen.dart';
import 'package:start_app/screens/home_screen.dart';
import 'package:start_app/screens/login_screen.dart';
import 'package:start_app/screens/profile_screen.dart';
final GoRouter  _router = GoRouter(
   initialLocation: '/login',
  routes: <RouteBase>
[
    GoRoute(
      path: '/login',
    builder: (BuildContext context, GoRouterState state){
      return const LoginScreen();
    },
    ),

 
     StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return ScaffoldBottomNavigationBar(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
                GoRoute(
                path: '/home',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomeScreen();
                },
                routes: <RouteBase>[
                  GoRoute(
                    path: 'details',
                    builder: (BuildContext context, GoRouterState state) {
                      return const DetailsScreen(label: 'details');
                    },
                  ),
                ],
              ),
            ],
          ),
           StatefulShellBranch(
            routes: <RouteBase>[
                GoRoute(
                path: '/profile',
                builder: (BuildContext context, GoRouterState state) {
                  return const ProfileScreen();
                },
              
              ),
            ],
          ),
          
        ],

              ),
  ],
  );



GoRouter getRouter (){
  return _router;
}