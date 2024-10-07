import 'package:exam/utills/modal.dart';
import 'package:exam/utills/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 75, 150),
        foregroundColor: Colors.white,
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail);
              },
              child: Container(
                height: s.height * 0.15,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 75, 150),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "+ Add Student",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Student Details",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...studentDetails.map(
              (e) => Card(
                child: ListTile(
                  leading: Text(e.grid),
                  title: Text(e.name),
                  subtitle: Text(e.std),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        studentDetails.remove(e);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
