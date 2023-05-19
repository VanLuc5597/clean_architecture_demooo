import 'package:architecture_demo/home/viewmodel/weather_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../global/color.dart';

class WeatherWidget extends ConsumerWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherViewModel = ref.watch(weatherProvider);
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: CommonColor.colorWhite,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child:Align(
              alignment: Alignment.centerLeft,
              child:  Column(
                children: [
                  Text(parseMillisecondsToDate(
                      weatherViewModel.weatherEntity?.time ?? "0")),
                  const Text('Thời tiết hôm nay')
                ],
              ),
            ),
          ),
          SizedBox(
            width: 70,
            height: 50,
            child: Image.network(
              weatherViewModel.weatherEntity?.weatherIcon ?? "",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            children: [
              Text(weatherViewModel.weatherEntity?.nameProvince ?? ""),
              Text(weatherViewModel.weatherEntity?.weatherDescription ?? ""),
            ],
          )
        ],
      ),
    );
  }

  String parseMillisecondsToDate(String time) {
    var dt = DateTime.fromMillisecondsSinceEpoch(int.parse(time));
    var date = DateFormat('dd/MM/yyyy').format(dt);
    return date;
  }
}
