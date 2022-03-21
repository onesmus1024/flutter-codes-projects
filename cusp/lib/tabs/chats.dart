
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Contact>? contacts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getContacts();
  }
  Future<void> _getContacts() async{
    bool isLoading = true;
    List<Contact>? _contacts;
    PermissionStatus permission =  await Permission.contacts.status;
    if(permission != PermissionStatus.granted ){
      await Permission.contacts.request();
      _contacts = await ContactsService.getContacts();
    }
    _contacts = await ContactsService.getContacts();
    setState(() {
      contacts = _contacts;
    });
  }
  @override
  Widget build(BuildContext context) {
    return contacts==null? const Center(child: CircularProgressIndicator(),):ListView.builder(itemCount: contacts!.length,
    itemBuilder: (context, index) =>
    ListTile(
      leading: CircleAvatar(child: Text(contacts![index].initials()),),
      title: Text(contacts![index].displayName.toString()),
    )
    );
  }
}
