import 'package:flutter/material.dart';

class EventModel {
  final String title;
  final String text;
  final String topic;
  final String date;
  final String time;
  final Color color;

  const EventModel({
    required this.title,
    required this.text,
    required this.topic,
    required this.date,
    required this.time,
    required this.color,
  });
}