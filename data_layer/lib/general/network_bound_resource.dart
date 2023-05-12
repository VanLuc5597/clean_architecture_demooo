import 'dart:async';

import 'package:dio/dio.dart';
import 'package:domain_layer/general/resource.dart';

// CuongCV debug TODO: processResponse should be wrapped in a mapper class.
class NetworkBoundResource {
  static Stream<Resource<DomainType>>
      cachingNetworkResource<ExternalType, DomainType>({
    required Future<DomainType> loadFromDb,
    required bool Function(DomainType data) shouldFetch,
    required Future<ExternalType> fetchFromRemote,
    required DomainType Function(ExternalType result) processResponse,
    required Future Function(DomainType item) saveCallResult,
  }) {
    var result = StreamController<Resource<DomainType>>();
    result.sink.add(Resource.loading());

    loadFromDb.then((cachedData) {
      if (shouldFetch(cachedData)) {
        result.sink.add(Resource.loading(data: cachedData));
        fetchFromRemote.then((response) {
          final freshData = processResponse(response);
          saveCallResult(freshData);
          result.sink.add(Resource.success(data: freshData));
        }).catchError((error) {
          _handleError(error, result.sink);
        });
      } else {
        result.sink.add(Resource.success(data: cachedData));
      }
    }).catchError((_) {
      // CuongCV debug TODO: Handle error?
    });

    return result.stream;
  }

  // CuongCV debug TODO: processResponse should be wrapped in a mapper class.
  static Stream<Resource<DomainType>>
      networkResource<ExternalType, DomainType>({
    required Future<ExternalType> fetchFromRemote,
    required DomainType Function(ExternalType result) processResponse,
  }) {
    var result = StreamController<Resource<DomainType>>();
    result.sink.add(Resource.loading());

    fetchFromRemote.then((response) {
      result.sink.add(Resource.success(data: processResponse(response)));
    }).catchError((error) {
      _handleError(error, result.sink);
    });

    return result.stream;
  }

  static _handleError(dynamic error, StreamSink sink) {
    switch (error.runtimeType) {
      case DioError:
      // CuongCV debug: TODO handle error here!!
      case Exception:
        sink.add(Resource.failed(data: null, error: error));
        break;
      default:
        sink.add(Resource.failed(data: null, error: null));
        break;
    }
  }
}
