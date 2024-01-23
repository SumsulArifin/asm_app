import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,
        title: Center(child: const Text("Home ")),
      ),
      body: Container(
        color: AppColors.bodyColor,
      ),
    );
  }
}

// import 'package:ams_v1/res/color.dart';
// import 'package:ams_v1/view_model/home_view_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
//             decoration: BoxDecoration(
//               color: AppColors.bodyColor,
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(15),
//                   bottomRight: Radius.circular(15)),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                         Icons.account_circle_outlined,
//                     size: 20,
//                     color: Colors.black,),
//                     Icon(
//                       Icons.logout_rounded,
//                       size: 20,
//                       color: Colors.black,),
//                   ],
//                 ),
//                 SizedBox(height: 25),
//                 Padding(
//                     padding: EdgeInsets.only(left: 3,bottom: 15),
//                 child: Text("Hello User",
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 1,
//                   wordSpacing: 2,
//                   color: Colors.black
//
//                 ),),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//
//   Widget _buildHomePage(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.only(right: 8),
//         child: Consumer<HomeViewViewModel>(builder: (context, provider, child) {
//           return GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   mainAxisExtent: 99,
//                   crossAxisCount: 3,
//                   mainAxisSpacing: 53,
//                   crossAxisSpacing: 53),
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: provider.homepageModelObj.homepageItemList.length,
//               itemBuilder: (context, index) {
//                 HomepageItemModel model =
//                 provider.homepageModelObj.homepageItemList[index];
//                 return HomepageItemWidget(model);
//               });
//         }));
//   }
// }

////

////

//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../data/response/status.dart';
// import '../utils/routes/routes_name.dart';
// import '../utils/utils.dart';
// import '../view_model/home_view_model.dart';
// import '../view_model/user_view_model.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   HomeViewViewModel  homeViewViewModel = HomeViewViewModel();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     homeViewViewModel.fetchCustomerListApi();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final userPrefernece = Provider.of<UserViewModel>(context);
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           InkWell(
//               onTap: (){
//                 userPrefernece.remove().then((value){
//                   Navigator.pushNamed(context, RoutesName.login);
//                 });
//               },
//               child: Center(child: Text('Logout'))),
//           SizedBox(width: 20,)
//         ],
//       ),
//       body: ChangeNotifierProvider<HomeViewViewModel>(
//         create: (BuildContext context) => homeViewViewModel,
//         child: Consumer<HomeViewViewModel>(
//             builder: (context, value, _){
//               switch(value.customerList.status){
//                 case Status.LOADING:
//                   return Center(child: CircularProgressIndicator());
//                 case Status.ERROR:
//                   return Center(child: Text(value.customerList.message.toString()));
//                 case Status.COMPLETED:
//                   return ListView.builder(
//                       itemCount: value.customerList.data!.customers!.length,
//                       itemBuilder: (context,index){
//                     return Card(
//                       child: ListTile(
//                         title: Text(value.customerList.data!.customers![index].name.toString()),
//                         subtitle: Text(value.customerList.data!.customers![index].email.toString()),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(Utils.averageRating(value.customerList.data!.customers![index].customerId! as List<int>).toString()),
//                             Icon(Icons.star , color: Colors.yellow,)
//                           ],
//                         ),
//                       ),
//                     );
//                   });
//
//                 case null:
//                   // TODO: Handle this case.
//                 case Status.OK:
//                   // TODO: Handle this case.
//               }
//               return Container();
//             }),
//       ) ,
//     );
//   }
// }
