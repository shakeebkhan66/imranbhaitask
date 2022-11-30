import 'package:flutter/material.dart';
import 'package:simpletask/secondpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final list = List.generate(4, (index) => 'Item Shakeeb ${index}');
  final namesList = ['Home', 'Profile', 'Products', 'Logout'];
  final List<bool> _selected = List.generate(20, (i) => false);

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Simple Task"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                setState(() {
                  _selected[index] = !_selected[index];
                });
              },
              child: Container(
                height: 70,
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    trailing: Icon(_selected[index] ? Icons.bookmark_added_rounded : null, color: Colors.black,),
                    // _selected[index] ? Colors.green : null,
                    title: Text(namesList[index]),
                    onTap: () {
                      setState(() {
                        _selected[index] = !_selected[index];
                      });
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SecondScreen(
                      //       item: list[index],
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
