import 'package:flutter/material.dart';
import 'package:random_ui/modules/time_tracker/widgets/tag_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.iconData,
    required this.title,
    required this.tagWidgets,
    this.color,
    required this.time,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final Color? color;
  final String time;
  final List<TagWidget> tagWidgets;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
                width: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => tagWidgets.elementAt(index),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: tagWidgets.length,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                time,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black54,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
