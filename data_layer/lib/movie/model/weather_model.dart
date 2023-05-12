import 'dart:convert';
WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));
String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());
class WeatherModel {
  WeatherModel({
      String? message, 
      Data? data, 
      int? statusCode,}){
    _message = message;
    _data = data;
    _statusCode = statusCode;
}

  WeatherModel.fromJson(dynamic json) {
    _message = json['Message'];
    _data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
    _statusCode = json['StatusCode'];
  }
  String? _message;
  Data? _data;
  int? _statusCode;
WeatherModel copyWith({  String? message,
  Data? data,
  int? statusCode,
}) => WeatherModel(  message: message ?? _message,
  data: data ?? _data,
  statusCode: statusCode ?? _statusCode,
);
  String? get message => _message;
  Data? get data => _data;
  int? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = _message;
    if (_data != null) {
      map['Data'] = _data?.toJson();
    }
    map['StatusCode'] = _statusCode;
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      List<DailyForecash>? dailyForecash, 
      CurrentWeather? currentWeather, 
      String? provinceCode, 
      int? updateAt, 
      String? lon, 
      int? id, 
      String? provinceName, 
      String? provinceIpCode, 
      String? provinceCodeWeather, 
      int? createAt, 
      String? lat,}){
    _dailyForecash = dailyForecash;
    _currentWeather = currentWeather;
    _provinceCode = provinceCode;
    _updateAt = updateAt;
    _lon = lon;
    _id = id;
    _provinceName = provinceName;
    _provinceIpCode = provinceIpCode;
    _provinceCodeWeather = provinceCodeWeather;
    _createAt = createAt;
    _lat = lat;
}

  Data.fromJson(dynamic json) {
    if (json['dailyForecash'] != null) {
      _dailyForecash = [];
      json['dailyForecash'].forEach((v) {
        _dailyForecash?.add(DailyForecash.fromJson(v));
      });
    }
    _currentWeather = json['currentWeather'] != null ? CurrentWeather.fromJson(json['currentWeather']) : null;
    _provinceCode = json['provinceCode'];
    _updateAt = json['updateAt'];
    _lon = json['lon'];
    _id = json['id'];
    _provinceName = json['provinceName'];
    _provinceIpCode = json['provinceIpCode'];
    _provinceCodeWeather = json['provinceCodeWeather'];
    _createAt = json['createAt'];
    _lat = json['lat'];
  }
  List<DailyForecash>? _dailyForecash;
  CurrentWeather? _currentWeather;
  String? _provinceCode;
  int? _updateAt;
  String? _lon;
  int? _id;
  String? _provinceName;
  String? _provinceIpCode;
  String? _provinceCodeWeather;
  int? _createAt;
  String? _lat;
Data copyWith({  List<DailyForecash>? dailyForecash,
  CurrentWeather? currentWeather,
  String? provinceCode,
  int? updateAt,
  String? lon,
  int? id,
  String? provinceName,
  String? provinceIpCode,
  String? provinceCodeWeather,
  int? createAt,
  String? lat,
}) => Data(  dailyForecash: dailyForecash ?? _dailyForecash,
  currentWeather: currentWeather ?? _currentWeather,
  provinceCode: provinceCode ?? _provinceCode,
  updateAt: updateAt ?? _updateAt,
  lon: lon ?? _lon,
  id: id ?? _id,
  provinceName: provinceName ?? _provinceName,
  provinceIpCode: provinceIpCode ?? _provinceIpCode,
  provinceCodeWeather: provinceCodeWeather ?? _provinceCodeWeather,
  createAt: createAt ?? _createAt,
  lat: lat ?? _lat,
);
  List<DailyForecash>? get dailyForecash => _dailyForecash;
  CurrentWeather? get currentWeather => _currentWeather;
  String? get provinceCode => _provinceCode;
  int? get updateAt => _updateAt;
  String? get lon => _lon;
  int? get id => _id;
  String? get provinceName => _provinceName;
  String? get provinceIpCode => _provinceIpCode;
  String? get provinceCodeWeather => _provinceCodeWeather;
  int? get createAt => _createAt;
  String? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dailyForecash != null) {
      map['dailyForecash'] = _dailyForecash?.map((v) => v.toJson()).toList();
    }
    if (_currentWeather != null) {
      map['currentWeather'] = _currentWeather?.toJson();
    }
    map['provinceCode'] = _provinceCode;
    map['updateAt'] = _updateAt;
    map['lon'] = _lon;
    map['id'] = _id;
    map['provinceName'] = _provinceName;
    map['provinceIpCode'] = _provinceIpCode;
    map['provinceCodeWeather'] = _provinceCodeWeather;
    map['createAt'] = _createAt;
    map['lat'] = _lat;
    return map;
  }

}

CurrentWeather currentWeatherFromJson(String str) => CurrentWeather.fromJson(json.decode(str));
String currentWeatherToJson(CurrentWeather data) => json.encode(data.toJson());
class CurrentWeather {
  CurrentWeather({
      int? dt, 
      int? tempEve, 
      int? tempMax, 
      int? tempCurrent, 
      int? weatherId, 
      String? weatherDescription, 
      String? weatherMain, 
      int? tempAft, 
      int? tempMin, 
      int? tempMorn, 
      String? weatherIconUrl,}){
    _dt = dt;
    _tempEve = tempEve;
    _tempMax = tempMax;
    _tempCurrent = tempCurrent;
    _weatherId = weatherId;
    _weatherDescription = weatherDescription;
    _weatherMain = weatherMain;
    _tempAft = tempAft;
    _tempMin = tempMin;
    _tempMorn = tempMorn;
    _weatherIconUrl = weatherIconUrl;
}

  CurrentWeather.fromJson(dynamic json) {
    _dt = json['dt'];
    _tempEve = json['tempEve'];
    _tempMax = json['tempMax'];
    _tempCurrent = json['tempCurrent'];
    _weatherId = json['weatherId'];
    _weatherDescription = json['weatherDescription'];
    _weatherMain = json['weatherMain'];
    _tempAft = json['tempAft'];
    _tempMin = json['tempMin'];
    _tempMorn = json['tempMorn'];
    _weatherIconUrl = json['weatherIconUrl'];
  }
  int? _dt;
  int? _tempEve;
  int? _tempMax;
  int? _tempCurrent;
  int? _weatherId;
  String? _weatherDescription;
  String? _weatherMain;
  int? _tempAft;
  int? _tempMin;
  int? _tempMorn;
  String? _weatherIconUrl;
CurrentWeather copyWith({  int? dt,
  int? tempEve,
  int? tempMax,
  int? tempCurrent,
  int? weatherId,
  String? weatherDescription,
  String? weatherMain,
  int? tempAft,
  int? tempMin,
  int? tempMorn,
  String? weatherIconUrl,
}) => CurrentWeather(  dt: dt ?? _dt,
  tempEve: tempEve ?? _tempEve,
  tempMax: tempMax ?? _tempMax,
  tempCurrent: tempCurrent ?? _tempCurrent,
  weatherId: weatherId ?? _weatherId,
  weatherDescription: weatherDescription ?? _weatherDescription,
  weatherMain: weatherMain ?? _weatherMain,
  tempAft: tempAft ?? _tempAft,
  tempMin: tempMin ?? _tempMin,
  tempMorn: tempMorn ?? _tempMorn,
  weatherIconUrl: weatherIconUrl ?? _weatherIconUrl,
);
  int? get dt => _dt;
  int? get tempEve => _tempEve;
  int? get tempMax => _tempMax;
  int? get tempCurrent => _tempCurrent;
  int? get weatherId => _weatherId;
  String? get weatherDescription => _weatherDescription;
  String? get weatherMain => _weatherMain;
  int? get tempAft => _tempAft;
  int? get tempMin => _tempMin;
  int? get tempMorn => _tempMorn;
  String? get weatherIconUrl => _weatherIconUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['tempEve'] = _tempEve;
    map['tempMax'] = _tempMax;
    map['tempCurrent'] = _tempCurrent;
    map['weatherId'] = _weatherId;
    map['weatherDescription'] = _weatherDescription;
    map['weatherMain'] = _weatherMain;
    map['tempAft'] = _tempAft;
    map['tempMin'] = _tempMin;
    map['tempMorn'] = _tempMorn;
    map['weatherIconUrl'] = _weatherIconUrl;
    return map;
  }

}

DailyForecash dailyForecashFromJson(String str) => DailyForecash.fromJson(json.decode(str));
String dailyForecashToJson(DailyForecash data) => json.encode(data.toJson());
class DailyForecash {
  DailyForecash({
      int? dt, 
      int? tempEve, 
      int? tempMax, 
      int? tempCurrent, 
      int? weatherId, 
      String? weatherDescription, 
      String? weatherMain, 
      int? tempAft, 
      int? tempMin, 
      int? tempMorn, 
      String? weatherIconUrl, 
      int? tempNight,}){
    _dt = dt;
    _tempEve = tempEve;
    _tempMax = tempMax;
    _tempCurrent = tempCurrent;
    _weatherId = weatherId;
    _weatherDescription = weatherDescription;
    _weatherMain = weatherMain;
    _tempAft = tempAft;
    _tempMin = tempMin;
    _tempMorn = tempMorn;
    _weatherIconUrl = weatherIconUrl;
    _tempNight = tempNight;
}

  DailyForecash.fromJson(dynamic json) {
    _dt = json['dt'];
    _tempEve = json['tempEve'];
    _tempMax = json['tempMax'];
    _tempCurrent = json['tempCurrent'];
    _weatherId = json['weatherId'];
    _weatherDescription = json['weatherDescription'];
    _weatherMain = json['weatherMain'];
    _tempAft = json['tempAft'];
    _tempMin = json['tempMin'];
    _tempMorn = json['tempMorn'];
    _weatherIconUrl = json['weatherIconUrl'];
    _tempNight = json['tempNight'];
  }
  int? _dt;
  int? _tempEve;
  int? _tempMax;
  int? _tempCurrent;
  int? _weatherId;
  String? _weatherDescription;
  String? _weatherMain;
  int? _tempAft;
  int? _tempMin;
  int? _tempMorn;
  String? _weatherIconUrl;
  int? _tempNight;
DailyForecash copyWith({  int? dt,
  int? tempEve,
  int? tempMax,
  int? tempCurrent,
  int? weatherId,
  String? weatherDescription,
  String? weatherMain,
  int? tempAft,
  int? tempMin,
  int? tempMorn,
  String? weatherIconUrl,
  int? tempNight,
}) => DailyForecash(  dt: dt ?? _dt,
  tempEve: tempEve ?? _tempEve,
  tempMax: tempMax ?? _tempMax,
  tempCurrent: tempCurrent ?? _tempCurrent,
  weatherId: weatherId ?? _weatherId,
  weatherDescription: weatherDescription ?? _weatherDescription,
  weatherMain: weatherMain ?? _weatherMain,
  tempAft: tempAft ?? _tempAft,
  tempMin: tempMin ?? _tempMin,
  tempMorn: tempMorn ?? _tempMorn,
  weatherIconUrl: weatherIconUrl ?? _weatherIconUrl,
  tempNight: tempNight ?? _tempNight,
);
  int? get dt => _dt;
  int? get tempEve => _tempEve;
  int? get tempMax => _tempMax;
  int? get tempCurrent => _tempCurrent;
  int? get weatherId => _weatherId;
  String? get weatherDescription => _weatherDescription;
  String? get weatherMain => _weatherMain;
  int? get tempAft => _tempAft;
  int? get tempMin => _tempMin;
  int? get tempMorn => _tempMorn;
  String? get weatherIconUrl => _weatherIconUrl;
  int? get tempNight => _tempNight;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['tempEve'] = _tempEve;
    map['tempMax'] = _tempMax;
    map['tempCurrent'] = _tempCurrent;
    map['weatherId'] = _weatherId;
    map['weatherDescription'] = _weatherDescription;
    map['weatherMain'] = _weatherMain;
    map['tempAft'] = _tempAft;
    map['tempMin'] = _tempMin;
    map['tempMorn'] = _tempMorn;
    map['weatherIconUrl'] = _weatherIconUrl;
    map['tempNight'] = _tempNight;
    return map;
  }

}