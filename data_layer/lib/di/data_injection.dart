import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'data_injection.config.dart';

@InjectableInit(asExtension: false)
FutureOr<GetIt> configureDataInjection(GetIt getIt) => init(getIt);

void main() {
  configureDataInjection(GetIt.instance);
}
