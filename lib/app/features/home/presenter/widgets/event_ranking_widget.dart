import 'dart:ui';

import 'package:appfest/app/features/home/models/event.dart';
import 'package:flutter/material.dart';

class EventRankingWidget extends StatelessWidget {
  final EventModel eventModel;

  const EventRankingWidget({Key? key, required this.eventModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed("/details"),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
            width: size.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(eventModel.imageUrl), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: ListTile(
                          title: Text(
                            eventModel.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            eventModel.locale,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(eventModel.profileImageUrl),
                            backgroundColor: Colors.transparent,
                          )),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
