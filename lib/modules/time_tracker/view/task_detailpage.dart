import 'package:flutter/material.dart';

import '../widgets/tag_widget.dart';

class TaskDetail extends StatefulWidget {
  const TaskDetail({Key? key}) : super(key: key);

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rasion Project',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const TagWidget(
                    title: 'Work',
                    color: Colors.red,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'UI Design',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 450,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFFCBB1CF),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextButton(
                  child: Text(
                    'Finish',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {}),
            ),
          ),
          TextButton(
            child: Text(
              'Quit',
              style: Theme.of(context).textTheme.headline5,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
