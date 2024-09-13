import 'dart:async';
import 'package:flutter/material.dart';

class CurrentTime extends StatefulWidget {
  @override
  _CurrentTimeWidgetState createState() => _CurrentTimeWidgetState();
}

class _CurrentTimeWidgetState extends State<CurrentTime> {
  late Timer _timer;
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _currentTime = _formatCurrentTime();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _currentTime = _formatCurrentTime();
      });
    });
  }

  String _formatCurrentTime() {
    final now = DateTime.now();
    final hours = now.hour.toString().padLeft(2, '0');
    final minutes = now.minute.toString().padLeft(2, '0');
    final seconds = now.second.toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> timeParts = _currentTime.split(':');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Hours (styled in red)
        Text(
          timeParts[0], // Hours
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.red, // Red color for hours
          ),
        ),
        // Colon between hours and minutes
        Text(
          ':',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // Minutes (styled in white)
        Text(
          timeParts[1], // Minutes
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // White color for minutes
          ),
        ),
        // Colon between minutes and seconds
        Text(
          ':',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // Seconds (styled in white)
        Text(
          timeParts[2], // Seconds
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // White color for seconds
          ),
        ),
      ],
    );
  }
}
