import 'package:get_it/get_it.dart';

import 'data_source_di.dart';
import 'mapper_di.dart';
import 'repository_di.dart';
import 'use_case_di.dart';

final getIt = GetIt.instance;

void setupSharedDependencies() {
  setupMapperDependencies();
  setupDataSourceDependencies();
  setupRepositoryDependencies();
  setupUseCaseDependencies();
}
