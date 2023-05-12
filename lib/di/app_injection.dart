import 'dart:async';

import 'package:data_layer/di/data_injection.dart';
import 'package:domain_layer/di/domain_injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
FutureOr configureInjection()  {
  configureDataInjection(getIt);
  configureDomainInjection(getIt);
  init(getIt);
}
