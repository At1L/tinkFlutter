import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/models/event_model.dart';
import 'package:tink_flutter_proj/screen/main_screen/event_screen/event_card.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreen();
}

class _EventsScreen extends State<EventsScreen> {
  final _models = <EventModel>[
    const EventModel(
      title: 'Purpose of Event',
      text: 'A little information about \nthe event, its purpose, etc.',
      topic: 'Tender',
      date: '12 July 2024',
      time: '5 p.m.',
      color: Colors.blue,
    ),
    const EventModel(
      title: 'Purpose of Event',
      text: 'A little information about \nthe event, its purpose, etc.',
      topic: 'Business meeting',
      date: '12 July 2024',
      time: '11 a.m.',
      color: Colors.purple,
    ),
    const EventModel(
      title: 'Purpose of Event',
      text: 'A little information about \nthe event, its purpose, etc.',
      topic: 'Personal meeting',
      date: '1 July 2024',
      time: '1 p.m.',
      color: Color(0xFFF600FF),
    ),
    const EventModel(
      title: 'Purpose of Event',
      text: 'A little information about \nthe event, its purpose, etc.',
      topic: 'Assembly',
      date: '21 June 2024',
      time: '5 p.m.',
      color: Color(0xFF05E7A7),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Events',
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 32),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'The latest',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'All month',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  itemBuilder: (context, index) => EventCard(
                    model: _models[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: _models.length,
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.yellow,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 12),
                          child: const Text(
                            'Create new event',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.yellow,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
