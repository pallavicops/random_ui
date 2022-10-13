import 'package:flutter/material.dart';
import 'package:random_ui/modules/time_tracker/view/container1.dart';

import 'container2.dart';

class MyProductivity extends StatefulWidget {
  const MyProductivity({Key? key}) : super(key: key);

  @override
  State<MyProductivity> createState() => _MyProductivityState();
}

class _MyProductivityState extends State<MyProductivity> {
  late List<Widget> _containerWidget;
  late int _currIndex;

  @override
  void initState() {
    _containerWidget = [const FirstContainer(), const SecondContainer()];
    _currIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8EC),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0xFFE8E8EC),
        automaticallyImplyLeading: false,
        title: Text(
          'My Productivity',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Task\nCompleted',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF491FAA),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  Icons.timer_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Time\nDuration',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text.rich(
                            TextSpan(
                                text: '1',
                                style: Theme.of(context).textTheme.headline3,
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'h',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  TextSpan(
                                    text: '  26',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                  TextSpan(
                                    text: 'm',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _currIndex == 0 ? Colors.white : Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextButton(
                        onPressed: () {
                          _currIndex = 0;
                          setState(() {});
                        },
                        child: Text(
                          'Day',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: _currIndex == 1 ? Colors.white : Colors.grey,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextButton(
                        onPressed: () {
                          _currIndex = 1;
                          setState(() {});
                        },
                        child: Text(
                          'Week',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _containerWidget.elementAt(_currIndex),
          ],
        ),
      ),
    );
  }
}
