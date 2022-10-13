import 'package:flutter/material.dart';
import 'package:random_ui/modules/time_tracker/view/task_page.dart';

import 'my_productivity.dart';

class TimeTrackerHomepage extends StatefulWidget {
  const TimeTrackerHomepage({Key? key}) : super(key: key);

  @override
  State<TimeTrackerHomepage> createState() => _TimeTrackerHomepageState();
}

class _TimeTrackerHomepageState extends State<TimeTrackerHomepage> {
  late List<Widget> _bodyWidget;

  late int currentIndex;
  @override
  void initState() {
    _bodyWidget = const [
      TaskPage(),
      MyProductivity(),
    ];
    currentIndex = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8EC),
      body: _bodyWidget.elementAt(currentIndex),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: const Color(0xFFE8E8EC),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: currentIndex == 1 ? Colors.black38 : Colors.black,
                onPressed: () {
                  currentIndex = 0;

                  setState(() {});
                },
                icon: const Icon(
                  Icons.watch_later_outlined,
                ),
              ),
              IconButton(
                color: currentIndex == 0 ? Colors.black38 : Colors.black,
                onPressed: () {
                  currentIndex = 1;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.analytics_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
