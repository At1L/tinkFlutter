import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/models/event_model.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';

class EventCard extends StatelessWidget {
  final EventModel model;
  const EventCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 4,
              height: double.infinity,
              color: model.color,
            ),
            Expanded(
              child: Container(
                color: AppColors.grey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Event',
                            style: TextStyle(
                              color: AppColors.lightGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            model.title,
                            style: const TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 227,
                            child: Text(
                              model.text,
                              style: const TextStyle(
                                color: AppColors.lightGrey,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: model.color,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            model.topic,
                            style: const TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15,),
                              child: Row(
                                children: [
                                  Text(
                                    model.date,
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
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
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15,),
                              child: Row(
                                children: [
                                  Text(
                                    model.time,
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
