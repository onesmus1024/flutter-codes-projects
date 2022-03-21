import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const  MaterialApp(
      title: 'contacts',
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Contact>? contactss;
  Future<void> _askPermissions() async {
    PermissionStatus permissionStatus = await Permission.contacts.request();
    PermissionStatus permission = await Permission.contacts.status;
    if(permission == PermissionStatus.granted){
      List<Contact> contacts = await ContactsService.getContacts();
      setState(() {
        contactss=contacts;
      });
    }else{
      print("permission denied");
    }


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const  Text("contacts"),),
      body: contactss==null? const Center(child: Text("No contacts"),):ListView.builder(
        itemCount: contactss?.length,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              child: Text(contactss![index].initials()),
            ),
            title: Text(contactss![index].displayName.toString()),
          )
      ),
      floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),onPressed: _askPermissions,),
      );
  }
}

