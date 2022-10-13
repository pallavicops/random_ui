import 'package:flutter/material.dart';

class FigmaApp extends StatefulWidget {
  const FigmaApp({Key? key}) : super(key: key);

  @override
  State<FigmaApp> createState() => _FigmaAppState();
}

class _FigmaAppState extends State<FigmaApp> {
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
          top: 200.0,
          bottom: 0,
          left: 30,
          right: 20,
        ),
        child: Column(
          children: [
            Text(
              'Figma App',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Visual Design and Research',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Visual design is a use of imagery, colors, shapes, typography, and form to enhance usablity and improve the user experience',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Visual design as a field has grown out of\nboth UI design and graphic design',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF51EAA3),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FigmaApp(),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ' Go Inside ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Divider(
                      indent: 10,
                      color: Colors.black54,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              // Container(
              //   padding: const EdgeInsets.all(2),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5.0),
              //     border: Border.all(
              //       width: 1.0,
              //       color: Colors.black12,
              //     ),
              //   ),
              //   child: const Icon(
              //     Icons.arrow_back_ios_new_rounded,
              //     size: 18,
              //   ),
              // ),
              // const SizedBox(
              //   width: 10,
              // ),
              // Container(
              //   padding: const EdgeInsets.all(2),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5.0),
              //     border: Border.all(
              //       width: 1.0,
              //       color: Colors.black12,
              //     ),
              //   ),
              //   child: const Icon(
              //     Icons.arrow_forward_ios_rounded,
              //     size: 18,
              //   ),
              // ),
              const SizedBox(
                width: 250,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
