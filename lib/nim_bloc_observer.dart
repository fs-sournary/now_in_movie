import 'package:bloc/bloc.dart';
import 'package:shared/util/nim_logger.dart';

class NimBlocObserver extends BlocObserver {
  const NimBlocObserver();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    NimLogger.log('${bloc.runtimeType} $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    NimLogger.log('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    NimLogger.log('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    NimLogger.log('${bloc.runtimeType} $transition');
  }
}
