import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Whatsapp"),),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefix: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: (){
                    print('Hello World');
                  },
                   icon:Icon(Icons.remove_red_eye )
                )
              ),
            ),
             ElevatedButton(
              onPressed: (){
                print('Hello');
              },
               child: Text("Login")
            )
          ],
        ),
      ),
    ); 
  }
}