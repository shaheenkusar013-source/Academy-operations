import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;

  final passwordController = TextEditingController();

  List<String> students = [
    "Daim",
    "Mama",
    "Papa",
    "Um E Habiba",
    "Sneha",
    "Iman",
    "Rabia",
    "Areeba",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0)
              
                  )
                )
              ),
            ),
            TextButton(onPressed:(){}, child: Text("unread")),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(students[index]),
                        subtitle: const Text("kya ho raha ha"),
                        trailing: Column(
                          children: [
                            const Text("10:00 am"),
                            CircleAvatar(
                              radius:10,
                              backgroundColor: Colors.green,
                              child: Text("1",
                               style: TextStyle(
                               color: Colors.white,
                                fontSize: 12,
                      
                              )),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height:1,
                        thickness: 0.5,
                        color:Colors.black,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child:Icon(Icons.chat)),
        ),
      );
    
  }
}