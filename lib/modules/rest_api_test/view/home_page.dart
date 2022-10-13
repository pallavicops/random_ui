import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../api_provider/api_provider.dart';
import '../models/airline_data_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late ApiProvider _apiProvider;
  @override
  void initState() {
    _apiProvider = ApiProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Test'),
      ),
      body: FutureBuilder(
        future: _apiProvider.getAirlinesData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<AirlineDataModel>> snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                final _data = snapshot.data![index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.network(
                              _data.logo ??
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9QodsJLxEZNqDmFS9g_RfaZEEEoOaGRW2r0JrZNM&s',
                              width: 100, errorBuilder: (a, b, c) {
                            return Icon(Icons.error_outline);
                          }),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(_data.country ?? 'NA'),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              _data.name ?? '',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              _data.slogan ?? '',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              '${_data.established ?? ""} * ${_data.headQuaters ?? ""}',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            TextButton(
                              onPressed: () => launchUrl(
                                Uri.https(
                                  _data.website ?? "",
                                ),
                              ),
                              child: Text(_data.website ?? ""),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
