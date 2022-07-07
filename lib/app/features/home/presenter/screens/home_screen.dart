import 'package:appfest/app/features/home/models/event.dart';
import 'package:appfest/app/features/home/presenter/widgets/chip_tag_widget.dart';
import 'package:appfest/app/features/home/presenter/widgets/event_ranking_widget.dart';
import 'package:appfest/app/features/home/presenter/widgets/event_widget.dart';
import 'package:appfest/app/features/home/utils/mock_event_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<EventModel> items = MockEventModel().items;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () => {},
          child: const Icon(Icons.add, color: Colors.white, size: 30)),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        actions: [
          SizedBox(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () => {bottomSheet(context)},
                    icon: const Icon(Icons.search, color: Colors.white)),
                IconButton(
                    onPressed: () => {bottomSheetBolt(context)},
                    icon: const Icon(Icons.bolt, color: Colors.white)),
                IconButton(
                    onPressed: () => {bottomSheet(context)},
                    icon: const Icon(Icons.settings, color: Colors.white)),
                IconButton(
                    onPressed: () => {bottomSheetGps(context)},
                    icon: const Icon(Icons.gps_fixed, color: Colors.white))
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
                height: size.height * 0.07,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MockEventModel().listTag.length,
                    itemBuilder: (context, i) {
                      return ChipTag(
                        label: MockEventModel().listTag[i],
                        isSelected: i == 0 ? true : false,
                      );
                    })),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                  height: size.height * 0.3,
                  width: size.width,
                  child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return EventRankingWidget(eventModel: items[i]);
                      })),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length,
                    reverse: true,
                    itemBuilder: (context, i) {
                      return EventWidget(eventModel: items[i]);
                    }))
          ],
        ),
      ),
    );
  }
}

//search bottomsheet
bottomSheet(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (context) {
        return SizedBox(
            height: size.height * 0.45,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, top: 20, bottom: 5),
                      child: Row(
                        children: const [
                          Text("Pesquise por evento, estabelecimento.")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.85,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.black12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [Text("Estilos musicais")],
                      ),
                      SizedBox(
                          height: size.height * 0.07,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: MockEventModel().listTag.length,
                              itemBuilder: (context, i) {
                                return ChipTag(
                                  label: MockEventModel().listTag[i],
                                  isSelected: i == 0 ? true : false,
                                );
                              })),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [Text("Preços médios")],
                      ),
                      SizedBox(
                          height: size.height * 0.07,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: MockEventModel().listPrices.length,
                              itemBuilder: (context, i) {
                                return ChipTag(
                                  label: MockEventModel().listPrices[i],
                                  isSelected: i == 0 ? true : false,
                                );
                              })),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "Pesquisar",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ));
      },
      context: (context));
}

//botttomsheet gps
bottomSheetGps(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (context) {
        return SizedBox(
            height: size.height * 0.45,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [Text("Sua localização")],
                      ),
                      SizedBox(
                          height: size.height * 0.07,
                          child: ListTile(
                            title: const Text("Palmas tocantins - TO"),
                            subtitle:
                                const Text("1004 sul alameda 04 lote 14 s/n"),
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Icon(Icons.gps_fixed)],
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [Text("Distância em km")],
                      ),
                      SizedBox(
                          height: size.height * 0.07,
                          child: Slider(
                              activeColor: Theme.of(context).primaryColor,
                              inactiveColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5),
                              min: 0,
                              max: 100,
                              label: "km",
                              value: 10,
                              onChanged: (value) => {})),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "Pesquisar",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ));
      },
      context: (context));
}

//botttomsheet gps
bottomSheetBolt(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (context) {
        return SafeArea(
          child: SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("assets/animations/bolt.json",
                      fit: BoxFit.cover, height: size.height * 0.3)
                ],
              )),
        );
      },
      context: (context));
}
