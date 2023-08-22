import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app/screens/details_screen.dart';
import 'package:start_app/screens/home_screen.dart';
final GoRouter  _router = GoRouter(routes: <RouteBase>[
GoRoute(
  path: '/',
  builder: (BuildContext context ,GoRouterState state ){
    return const HomeScreen();
  },
  routes: <RouteBase>[
    GoRoute(path: 'details',
    builder: (BuildContext context, GoRouterState state){
      return const DetailsScreen();
    },
    ),
  ],
  ),
]
);

GoRouter getRouter (){
  return _router;
}