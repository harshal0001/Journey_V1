import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key, required this.choosen_date,});
  final DateTime choosen_date;
  

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime selectedDay;
  late DateTime firstDay;
  late DateTime lastDay;

  @override
  void initState() {
    selectedDay = widget.choosen_date;
    firstDay = DateTime.now().toLocal().subtract(const Duration(days: 7));
    lastDay = DateTime.now().toLocal().add(const Duration(days: 7));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: widget.choosen_date,
      firstDate: firstDay,
      lastDate: DateTime.now().toLocal(),
      onDateSelected: (selectDay) {
        setState(() {
          selectedDay = selectDay;
        });
      },
    );
  }
}
