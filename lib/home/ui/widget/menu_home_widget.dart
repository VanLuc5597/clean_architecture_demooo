import 'package:architecture_demo/global/color.dart';
import 'package:architecture_demo/home/ui/widget/item_menu_home.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuHomeWidget extends ConsumerWidget {
  const MenuHomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.asset(
            'assets/image/image_cover_header.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(12, 170, 12, 0),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: CommonColor.colorWhite,
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                  Expanded(
                    child: ItemMenuHome(),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
