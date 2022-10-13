import 'package:flutter/material.dart';
import 'package:random_ui/extensions/extensions.dart';
import 'package:random_ui/modules/time_tracker/view/task_detailpage.dart';

import '../bloc/task_timer_counter_bloc.dart';
import '../widgets/card_widget.dart';
import '../widgets/tag_widget.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late TaskTimerBloc _taskTimerBloc;
  @override
  void initState() {
    _taskTimerBloc = TaskTimerBloc();
    _taskTimerBloc.starTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8EC),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFE8E8EC),
        title: Row(
          children: [
            Text(
              'Task',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            const Icon(
              Icons.more_horiz,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              //margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StreamBuilder<int>(
                          stream: _taskTimerBloc.timerController.stream,
                          initialData: 0,
                          builder: (BuildContext context,
                              AsyncSnapshot<int> snapshot) {
                            return Text(
                              snapshot.data?.toFormattedTime(),
                              style: Theme.of(context).textTheme.headline3,
                            );
                          }),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return FractionallySizedBox(
                                heightFactor: 0.9,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 40,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    const TaskDetail(),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        color: Colors.purpleAccent,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rasion Project',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Text('See All')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                CardWidget(
                  iconData: Icons.monitor,
                  title: 'UI design',
                  time: '00:10:40',
                  tagWidgets: [
                    TagWidget(
                      title: 'Work',
                      color: Colors.redAccent,
                    ),
                    TagWidget(
                      title: 'Rasion project',
                      color: Colors.purpleAccent,
                    ),
                  ],
                  color: Colors.purpleAccent,
                ),
                CardWidget(
                  iconData: Icons.fitness_center,
                  title: '100x Sit-up',
                  tagWidgets: [
                    TagWidget(
                      title: 'Personal',
                      color: Color(0xFFA2A2A8),
                    ),
                    TagWidget(
                      title: 'Workout',
                      color: Colors.orangeAccent,
                    ),
                  ],
                  time: '00:14:06',
                  color: Colors.orangeAccent,
                ),
                CardWidget(
                  iconData: Icons.code,
                  title: 'Learn HTML & CSS',
                  tagWidgets: [
                    TagWidget(
                      title: 'Personal',
                      color: Color(0xFFA2A2A8),
                    ),
                    TagWidget(
                      title: 'Coding',
                      color: Colors.redAccent,
                    ),
                  ],
                  time: '00:25:24',
                  color: Colors.redAccent,
                ),
                CardWidget(
                  iconData: Icons.menu_book_sharp,
                  title: 'Read 10 page of Book',
                  tagWidgets: [
                    TagWidget(
                      title: 'Personal',
                      color: Color(0xFFA2A2A8),
                    ),
                    TagWidget(
                      title: 'Coding',
                      color: Colors.greenAccent,
                    ),
                  ],
                  time: '00:25:24',
                  color: Colors.greenAccent,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
