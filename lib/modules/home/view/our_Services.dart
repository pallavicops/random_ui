import 'package:flutter/material.dart';

import '../models/expansion_data_model.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  late List<ExpansionDataModel> expansionData;
  @override
  void initState() {
    expansionData = [
      ExpansionDataModel(
        title: 'Website',
        description:
            'We design effective,customer-friendly,\nand business-focused mobile apps to\nprovide a seamless delightful\nexperiance',
        secondDescription:
            'Our creative desisns and\ninteractive user interfaces attract and\nboost customer engagement',
      ),
      ExpansionDataModel(
        title: 'Mobile App',
        description:
            'We design effective,customer-friendly,\nand business-focused mobile apps to\nprovide a seamless delightful\nexperiance',
        secondDescription:
            'Our creative desisns and\ninteractive user interfaces attract and\nboost customer engagement',
      ),
      ExpansionDataModel(
        title: 'Dashboard',
        description:
            'We design effective,customer-friendly,\nand business-focused mobile apps to\nprovide a seamless delightful\nexperiance',
        secondDescription:
            'Our creative desisns and\ninteractive user interfaces attract and\nboost customer engagement',
      ),
      ExpansionDataModel(
        title: 'Branding',
        description:
            'We design effective,customer-friendly,\nand business-focused mobile apps to\nprovide a seamless delightful\nexperiance',
        secondDescription:
            'Our creative desisns and\ninteractive user interfaces attract and\nboost customer engagement',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          bottom: 0,
          left: 30,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Services',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Studio\nDesign Agency',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ...expansionData.map((e) => Text("Hi")),
            // ...List.generate(expansionData.length, (index) => Text("Hii")),
            Expanded(
              child: ListView.builder(
                itemCount: expansionData.length,
                itemBuilder: (context, index) {
                  final data = expansionData.elementAt(index);
                  return ExpansionTile(
                    trailing: data.isExpanded
                        ? const Icon(Icons.remove_circle_outline)
                        : const Icon(Icons.add_circle_outline),
                    onExpansionChanged: (bool expanded) {
                      setState(() => data.isExpanded = expanded);
                    },
                    tilePadding: EdgeInsets.zero,
                    childrenPadding: EdgeInsets.zero,
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    title: Text(
                      data.title,
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    children: [
                      Text(
                        data.description,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data.secondDescription,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Learn More ',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const SizedBox(
                              width: 40,
                              child: Divider(
                                indent: 10,
                                color: Colors.black,
                                thickness: 3,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
