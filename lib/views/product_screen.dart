// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:gettt/controllers/auth_controller.dart';

// class ProductScreen extends StatelessWidget {
//   final productController = Get.put(AuthController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("All Product List"),
//           actions: [
//             Row(
//               children: [
//                 ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.shopping_cart),
//                     label: Text('0'))
//               ],
//             )
//           ],
//         ),
//         body: Column(children: [
//           Expanded(
//             child: ListView.builder(
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: Text("Product"),
//                 );
//               },
//               itemCount: productController.productData.length,
//             ),
//           )
//         ]));
//   }
// }
