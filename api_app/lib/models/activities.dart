import 'package:http/http.dart' as http;
import 'dart:convert';

List<Activity> activities = [];
Future getActivities() async {
  var url = Uri.http('127.0.0.1:8000', '/task');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var json = jsonDecode(response.body);

    for (var task in json) {
      String name = task['name'];
      String completed = task['completed'].toString();
      String description = task['description'];
      activities.add(Activity(name: name, completed: completed,description: description));
    }
    return activities;
  } else {
    // ignore: avoid_print
    print("data was not fetched");
  }
}

class Activity {
  String? name;
  String? completed;
  String? description;
  Activity({required this.name, required this.completed,required this.description});
}
