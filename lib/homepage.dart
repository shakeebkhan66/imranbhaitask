// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   bool isSelected = false;
//   final namesList = ["Home", "Profile", "Product", "Logout"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: namesList.length,
//               itemBuilder: (context, index){
//                 return Column(
//                   children: [
//                     const Divider(color: Colors.white70, thickness: 1.0,),
//                     InkWell(
//                       onTap: (){
//                         setState(() {
//                           isSelected = true;
//                         });
//                       },
//                       child: Container(
//                         height: 70,
//                         width: double.infinity,
//                         child: Card(
//                           color: Colors.white,
//                           child: InkWell(
//                             child: RadioListTile(
//
//                             )
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
