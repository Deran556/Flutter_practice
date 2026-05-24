import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/classes/activity_class.dart';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => CoursePageState();
}

class CoursePageState extends State<CoursePage> {
  late Future<Activity> futureActivity;
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    futureActivity = fetchActivity();
  }

  Future<Activity> fetchActivity() async {
    final url = Uri.parse(
      'https://bored-api.appbrewery.com/random',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Activity.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception('Failed to load activity');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Activity'),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isFirst = !isFirst;
            },);
            
          }, icon: Icon(Icons.switch_access_shortcut))
        ]
      ),

      body: FutureBuilder<Activity>(
        future: futureActivity,

        builder: (context, snapshot) {

          if (snapshot.connectionState ==
              ConnectionState.waiting) {

            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          else if (snapshot.hasError) {

            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          else if (snapshot.hasData) {

            final activity = snapshot.data!;

            return Padding(
              padding: const EdgeInsets.all(20),

              child: AnimatedCrossFade(firstChild: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    activity.activity,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text('Type: ${activity.type}'),

                  Text(
                    'Participants: ${activity.participants}',
                  ),

                  Text('Price: ${activity.price}'),

                  Text(
                    'Availability: ${activity.availability}',
                  ),

                  Text(
                    'Accessibility: ${activity.accessibility}',
                  ),

                  Text(
                    'Duration: ${activity.duration}',
                  ),

                  Text(
                    'Kid Friendly: ${activity.kidFriendly}',
                  ),

                  Text('Link: ${activity.link}'),

                  Text('Key: ${activity.key}'),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {

                      setState(() {

                        futureActivity =
                            fetchActivity();

                      });
                    },

                    child: const Text(
                      'Get Another Activity',
                    ),
                  ),
                ],
              ), 
              secondChild: Center(child: Image.asset('assets/images/bg.jpeg')), 
              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
              duration: Duration(milliseconds: 1000),
              )
            );
          }

          return const Center(
            child: Text('No Data'),
          );
        },
      ),
    );
  }
}