import 'package:flutter/material.dart';

class OriginalScreen extends StatefulWidget {
  const OriginalScreen({Key? key}) : super(key: key);

  @override
  State<OriginalScreen> createState() => _OriginalScreenState();
}

class _OriginalScreenState extends State<OriginalScreen> {
  int? tappedIndex;

  List<String> namesList = ["Home", "Profile", "Product", "Logout"];
  List iconsList = [Icons.home, Icons.person, Icons.production_quantity_limits, Icons.logout];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Simple Task",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: namesList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Divider(thickness: 1.0, color: Colors.green,),
                    Container(
                    height: 70,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black12, offset: Offset(0.1, 0), blurRadius: 5.0)
                        ]
                    ),
                    child: Card(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Icon(iconsList[index], color: Colors.green,),
                        trailing: Visibility(
                          visible: tappedIndex == index,
                          child: const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        title: Text(
                          namesList[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            tappedIndex = index;
                          });
                        },
                        onLongPress: () {
                          setState(() {
                            tappedIndex = -1;
                          });
                        },
                      ),
                    ))
                  ],
                );
              }),
        ],
      ),
    );
  }
}
