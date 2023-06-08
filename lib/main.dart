import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:now_in_movie/di/bloc_di.dart';
import 'package:now_in_movie/nim_app.dart';
import 'package:now_in_movie/nim_bloc_observer.dart';
import 'package:shared/di/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge).then((value) {
    setupSharedDependencies();
    setupBlocDependencies();
    Bloc.observer = const NimBlocObserver();
    runApp(const NimApp());
  });
}
