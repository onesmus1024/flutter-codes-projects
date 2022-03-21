import 'package:cusp/screens/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static final routName = '/';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoggingIn=false;
  void _setLogginIn(){
    setState(() {
      isLoggingIn = !isLoggingIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
          child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20),
        child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Text("username")),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Text("email")),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Text("password")),
                ),
                if(isLoggingIn)
                TextFormField(
                  decoration:
                  const InputDecoration(label: Text("confirm password")),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Home.routName);
                }, child: !isLoggingIn? const Text("Login"): const Text("sign up")),
                const SizedBox(height: 20,),
                TextButton(onPressed:_setLogginIn, child:!isLoggingIn? const Text("sign in instead?"):const Text("Login instead?"))
              ],
            )),)
      )),
    ));
  }
}
