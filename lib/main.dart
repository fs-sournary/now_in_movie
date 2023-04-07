import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:now_in_movie/di/bloc_di.dart';
import 'package:now_in_movie/nim_app.dart';
import 'package:now_in_movie/nim_bloc_observer.dart';
import 'package:shared/di/data_source_di.dart';
import 'package:shared/di/repository_di.dart';
import 'package:shared/di/use_case_di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge).then((value) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark
          .copyWith(systemNavigationBarColor: Colors.transparent),
    );
    _setupGetIT();
    Bloc.observer = const NimBlocObserver();
    runApp(const NimApp());
  });
}

void _setupGetIT() {
  setupDataSourceDependencies();
  setupRepositoryDependencies();
  setupUseCaseDependencies();
  setupBlocDependencies();
}
