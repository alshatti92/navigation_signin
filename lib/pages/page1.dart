import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign in"),
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.red,
                        )))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        )))),
            ElevatedButton(
              onPressed: () {
                print("username ${nameController.text}");
                print("password ${passwordController.text}");
                context.push("/page2", extra: nameController.text);
              },
              child: Text("تفضل طال عمرك"),
            ),
          ],
        ));
  }
}
