import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final  imageUrls="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjRCTdbQdsNDzj4ZOoe5YvpCAeS_g82k0Ng&usqp=CAU'";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile App'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return Expanded(
            child: Center(
                child: (orientation == Orientation.portrait)
                    ? Column(children: [
                        Expanded(
                          flex: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 70,
                                backgroundImage: Image.network(imageUrls)
                                    .image,
                                backgroundColor: Colors.greenAccent,
                              ),
                              Text(
                                "Sufyan",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "I'm a student of CSE in RUET, Rajshahi,I'm a proffesional app and web developer, "
                                  "I have Skill of Flutter, Dart, Java, C, C++, Python, HTML, CSS, JavaScript, Git, GitHub,"
                                  " Microsoft Office, Microsoft Excel, Microsoft PowerPoint, Microsoft Word, etc.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 40,
                            child: GridView.builder(
                                itemCount: 12,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3),
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: Image.network(
                                      imageUrls,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }))
                      ])
                    : Row(children: [
                  Expanded(
                    flex:25,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: Image.network(imageUrls)
                                .image,
                            backgroundColor: Colors.greenAccent,
                          ),],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 70,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 40,
                              child:  Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Sufyan",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "I'm a student of CSE in RUET, Rajshahi,I'm a proffesional app and web developer, "
                                            "I have Skill of Flutter, Dart, Java, C, C++, Python, HTML, CSS.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                            flex: 50,
                            child: GridView.builder(
                                itemCount: 12,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2,
                                    crossAxisCount: 3,
                                ),
                                itemBuilder: (context, index) {
                                  return Card(
                                    elevation: 20,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    margin: EdgeInsets.all(5),
                                    child: Image.network(
                                      imageUrls,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ))
                ])));
      }),
    );
  }
}
