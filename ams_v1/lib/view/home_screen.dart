
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Home ")),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),

    );
  }
}


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
