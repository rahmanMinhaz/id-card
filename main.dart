import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 370,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://i.ibb.co/S0Y4hSg/SMUCT-Logo-1.png',
                  scale: 5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 3),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                          radius: 45,
                          foregroundImage: NetworkImage(
                              'https://i.ibb.co/QC67zWc/minhaz.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Md Minhazur Rahman"),
                    Text(
                      "ID: 201071045",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      "REG.NO.: 200007411",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text("Dept Of Computer Science & Engineering (B.Sc. CSE)"),
                    Text(
                      "Blood Group: B+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.amber,
                thickness: 2,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
